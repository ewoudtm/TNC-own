class ProductnegotiationsController < ApplicationController
  before_action :set_product_negotiation, only: [:show]
  before_action :set_single_bids, only: [:show]
  before_action :authorize_buyer_seller, only: [:show]


  def index
  end

  def show


    @current_negotiation_bids = ProductNegotiation.get_bids_from_current_negotiation(@single_bids, params)

  end

  def new
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
      if (current_user.id == @product_negotiation.user.id) || (current_user.id == @product_negotiation.product.user_id)
        return
      else
        redirect_to product_path, notice: "Sorry, this is not your negotiation"
      end
    end


end
