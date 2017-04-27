class SinglebidsController < ApplicationController

  def index
    singlebids_index = SingleBid.all
    @singlebids = singlebids_index.group_by(&:created_at)
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
  end

  def destroy
  end

end
