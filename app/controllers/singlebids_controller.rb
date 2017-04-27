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
      @newbid = SingleBid.create!(product_negotiation_id: params[:productnegotiation_id], price: params[:price], user_id: current_user.id)
       redirect_to productnegotiation_path(params[:productnegotiation_id])
  end

  def update
    @singlebid = SingleBid.find(params[:id])
    if @singlebid.update_attribute(:accepted, true)
      @singlebid.save
    end
  end

  def destroy
  end

end
