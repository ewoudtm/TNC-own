class SinglebidsController < ApplicationController

  def index

    @singlebids = SingleBid.all

  end

  def show
  end

  def new
    @singlebid = SingleBid.new


  end

  def create
    bits = ProductNegotiation.find(params[:productnegotiation_id].to_i).single_bids
    min_price = 20
    seventy_percent_startprice = 0.7 * ProductNegotiation.find(params[:productnegotiation_id].to_i).product.start_price


    if (params[:price].to_i < min_price)
      redirect_to productnegotiation_path(params[:productnegotiation_id]), alert: "Minumum offer must be at least 20 euros"
    elsif (params[:price].to_i < seventy_percent_startprice)
      redirect_to productnegotiation_path(params[:productnegotiation_id]), alert: "Minumum amount of the offer has to be at least 70% of the product price"
    elsif (bits.length <= 4)
      @newbid = SingleBid.create!(product_negotiation_id: params[:productnegotiation_id], price: params[:price], user_id: current_user.id)
      redirect_to productnegotiation_path(params[:productnegotiation_id]), notice: "Offer created"
    end
  end

  def update
    @singlebid = SingleBid.find(params[:productnegotiation_id])
    if @singlebid.update_attribute(:accepted, true)
      @singlebid.save
    end
  end

  def destroy
  end

end
