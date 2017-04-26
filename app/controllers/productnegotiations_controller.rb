class ProductnegotiationsController < ApplicationController
  before_action :set_product_negotiation, only: [:show]
  before_action :set_single_bids, only: [:show]


  def index
    # @current_negotiation_bids = ProductNegotiation.get_bids_from_current_negotiation(@single_bids, params)
    # debugger
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


end
