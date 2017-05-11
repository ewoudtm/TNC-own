class ProdNegsController < ApplicationController
  before_action :set_prod_negs, only: [:new, :index]
  before_action :set_prod_neg, only: [:show, :update]
  before_action :set_single_bids, only: [:show]
  before_action :authorize_buyer_seller, only: [:show]
  before_action :buyer_and_seller,  only: [:show]
  before_action :end_time, only: [:show]

  def index
  end

  def show
    @current_negotiation_bids = ProdNeg.get_bids_from_current_negotiation(@single_bids, params).sort_by &:created_at
  end

  def new
    redirect_if_negotiation_already_exists
    redirect_if_product_accept_offer_is_false unless @already_redirected == true
    create_new_negotiation_and_redirect unless @already_redirected == true
  end

  def create
  end

  def update
    @prod_neg.update_attribute(:active, false)

    redirect_to prod_negs_path, alert: "Negotiation closed"
  end

  def destroy
  end

  private

    def set_prod_negs
      @prod_negs = ProdNeg.all
    end

    def set_prod_neg
      @prod_neg = ProdNeg.find(params[:id])
    end

    def set_single_bids
      @single_bids = SingleBid.all
    end

    def authorize_buyer_seller
      # if current_user id is equal to Product owner or Product bidder, ok to continue, otherwise not.
      redirect_to product_path, alert: "Sorry, you can't see other peoples negotiations" unless (current_user.id == @prod_neg.user.id) || (current_user.id == @prod_neg.product.user_id)
    end

    def redirect_if_negotiation_already_exists
      # redirect to negotiation if Buyer already has a negotiation for this product
      @already_redirected = false
      found_negotiation = current_user.prod_negs.find do |negotiation|
        negotiation.product_id == params[:format].to_i
      end
      redirect_to prod_neg_path(found_negotiation.id), alert: "You already have a negotiation for this product" unless found_negotiation == nil
      @already_redirected = true unless found_negotiation == nil
    end

    def redirect_if_product_accept_offer_is_false
      product_id = params[:format].to_i
      if (Product.find(product_id).accept_offers === false)
        redirect_to product_path(product_id), alert: "Sorry, the seller has set this product as not available for new biddings"
        @already_redirected = true
      end
    end

    def create_new_negotiation_and_redirect
      prod_neg = ProdNeg.new
      prod_neg.update_attributes(product_id: params[:format], user_id: current_user.id)
      prod_neg.save
      redirect_to prod_neg_path(prod_neg.id), notice: "Succesfully created a new negotiation"
    end

    def buyer_and_seller
      @buyer = User.find(@prod_neg.user.id)
      @seller = User.find(@prod_neg.product.user_id)
    end

    def end_time
      current_negotiation_bids = ProdNeg.get_bids_from_current_negotiation(@single_bids, params)
      if current_negotiation_bids.length != 0
        last_bid = current_negotiation_bids.last
        @end_time = last_bid.created_at + 2.days
      end
    end
end
