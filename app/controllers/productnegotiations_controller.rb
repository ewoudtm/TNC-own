class ProductnegotiationsController < ApplicationController
  before_action :set_product_negotiation, only: [:show]
  before_action :set_single_bids, only: [:show]
  before_action :authorize_buyer_seller, only: [:show]
  # before_action :is_buyer_seller, only: [:new]

  def index
  end

  def show
    @current_negotiation_bids = ProductNegotiation.get_bids_from_current_negotiation(@single_bids, params)

  end

  def new
    # debugger
    # check_buyer_is_seller = ProductNegotiation.is_buyer_already_seller(current_user, @product)
    # is_new_product_negotiation_or_not
    @product_negotiation = ProductNegotiation.new
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

    # def is_buyer_seller
    #
    #   debugger
    # end


end
