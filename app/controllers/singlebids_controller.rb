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
      if @newbid.save
        product_negotiation = ProductNegotiation.find(@newbid.product_negotiation_id)
        buyer = User.find(product_negotiation.user.id)
        seller = User.find(product_negotiation.product.user_id)
        AuctionMailer.new_offer_email(buyer, product_negotiation, @newbid).deliver_now
        AuctionMailer.new_offer_email(seller, product_negotiation, @newbid).deliver_now
        redirect_to productnegotiation_path(params[:productnegotiation_id]), notice: "Offer created"
      else
        render :new
      end
    end
  end

  def update
    @singlebid = SingleBid.find(params[:productnegotiation_id])
    if @singlebid.update_attribute(:accepted, true)
      if @singlebid.save
        product_negotiation = ProductNegotiation.find(@singlebid.product_negotiation_id)
        buyer = User.find(product_negotiation.user.id)
        seller = User.find(product_negotiation.product.user_id)
        AuctionMailer.accepted_offer_email(buyer, product_negotiation, @singlebid).deliver_now
        AuctionMailer.accepted_offer_email(seller, product_negotiation, @singlebid).deliver_now
      end
    end
    redirect_to productnegotiation_path, notice: 'You accepted the offer'
  end

  def destroy
  end


end
