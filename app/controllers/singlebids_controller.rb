class SinglebidsController < ApplicationController

  def index
    @singlebids = SingleBid.all
  end

  def show
  end

  def create
  end

  def update
    @singlebid = SingleBid.find(params[:id])
    @singlebid.update_attribute(:accepted, true)
      # Correct path TBD, for now redirected to root
      redirect_to root_path, notice: "Offer Accepted"
  end

  def destroy
  end

end
