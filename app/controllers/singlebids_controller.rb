class SinglebidsController < ApplicationController

  def index
    @singlebids = SingleBid.all
    @singlebid = SingleBid.new
  end

  def show
  end

  def new
    @singlebid = SingleBid.new


  end

  def create
    @singlebid = SingleBid.new
  end

  def update
  end

  def destroy
  end

end
