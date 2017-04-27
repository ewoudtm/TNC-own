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
    # create_singlebid = SingleBid.createSingleBid(:price, :product_negotiation_id)
    # create_singlebid.save



    pn_singlebid = SingleBid.new
    pn_singlebid.update_attributes(product_negotiation_id: params[:product_negotiation_id], price: params[:price], user_id: current_user.id)
    pn_singlebid.save

    

  end

  def update
  end

  def destroy
  end

end
