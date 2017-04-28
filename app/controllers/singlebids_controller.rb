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

    if (bits.length <= 4)
      @newbid = SingleBid.create!(product_negotiation_id: params[:productnegotiation_id], price: params[:price], user_id: current_user.id)
       redirect_to productnegotiation_path(params[:productnegotiation_id])
     end
   else redirect_to productnegotiation_path(params[:productnegotiation_id]), notice: "Max amount of bids reached"
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
