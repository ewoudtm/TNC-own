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
    SingleBid.createSingleBid(params[:price])
  end

  def update
  end

  def destroy
  end

end
