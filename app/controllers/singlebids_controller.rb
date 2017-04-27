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
    if @singlebid.update_attribute(:accepted, true)
      @singlebid.save
    end
  end

  def destroy
  end

end
