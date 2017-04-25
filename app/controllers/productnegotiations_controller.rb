class ProductnegotiationsController < ApplicationController
  before_action :set_product_negotiation, only: [:show]
  before_action :set_single_bids, only: [:show]


  def index
  end

  def show

    #@product_negotiation_bids = find_bids(@single_bids)
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

    def find_bids

      # return single_bids.find(params[:product_negotiation_id])
    end

end
