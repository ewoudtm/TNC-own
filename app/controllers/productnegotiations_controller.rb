class ProductnegotiationsController < ApplicationController
  before_action :set_product_negotiation, only: [:show]
  before_action :set_single_bids, only: [:show]
  before_action :authorize_buyer_seller, only: [:show]
  before_action :get_product_negotiations, only: [:new]


  def index
  end

  def show
    @current_negotiation_bids = ProductNegotiation.get_bids_from_current_negotiation(@single_bids, params)

  end

  def new
    redirect_if_negotiation_already_exists

    product_negotiation = ProductNegotiation.new
    product_negotiation.update_attributes(product_id: params[:format], user_id: current_user.id)
    product_negotiation.save
    redirect_to productnegotiation_path(product_negotiation.id)
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

    def set_product_negotiation
      @product_negotiation = ProductNegotiation.find(params[:id])
    end

    def set_single_bids
      @single_bids = SingleBid.all
    end

    def authorize_buyer_seller
      # if current_user id is equal to Product owner or Product bidder, ok to continue, otherwise not.
      redirect_to product_path, notice: "Sorry, you can't see other peoples negotiations" unless (current_user.id == @product_negotiation.user.id) || (current_user.id == @product_negotiation.product.user_id)
    end

    def get_product_negotiations
      @product_negotiations = ProductNegotiation.all
    end

    def redirect_if_negotiation_already_exists
      # redirect to negotiation if Buyer already has a negotiation for this product
      found_negotiation = current_user.product_negotiations.find do |negotiation|
        negotiation.product_id == params[:format].to_i
      end
      redirect_to productnegotiation_path(found_negotiation.id), notice: "You already have a negotiation for this product" unless found_negotiation == nil
    end
end
