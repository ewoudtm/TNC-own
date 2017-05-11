class SingleBidsController < ApplicationController
  before_action :set_single_bids, only: [:index]


  def index
  end

  def show
  end

  def new
    @single_bid = SingleBid.new
  end

  def create
    bids = ProdNeg.find(params[:prod_neg_id].to_i).single_bids
    min_price = 20
    seventy_percent_startprice = 0.7 * ProdNeg.find(params[:prod_neg_id].to_i).product.start_price

    if (bids.length >= 4)
      redirect_to prod_neg_path(params[:prod_neg_id]), alert: "Maximum amount of offers reached"
    elsif (params[:price].to_i < seventy_percent_startprice)
      redirect_to prod_neg_path(params[:prod_neg_id]), alert: "Minimum amount of the offer has to be at least 70% of the product price"
    elsif (params[:price].to_i < min_price)
      redirect_to prod_neg_path(params[:prod_neg_id]), alert: "Minimum offer must be at least 20 euros"
    else
      @newbid = SingleBid.create!(prod_neg_id: params[:prod_neg_id], price: params[:price], user_id: current_user.id)
      if @newbid.save
        prod_neg = ProdNeg.find(@newbid.prod_neg_id)
        buyer = User.find(prod_neg.user.id)
        seller = User.find(prod_neg.product.user_id)
        AuctionMailer.new_offer_email(buyer, prod_neg, @newbid).deliver_now
        AuctionMailer.new_offer_email(seller, prod_neg, @newbid).deliver_now
        redirect_to prod_neg_path(params[:prod_neg_id]), notice: "Offer created"
      end
    end
  end

  def update
    @single_bid = SingleBid.find(params[:prod_neg_id])
    if @single_bid.update_attribute(:accepted, true)
      if @single_bid.save
        prod_neg = ProdNeg.find(@single_bid.prod_neg_id)
        buyer = User.find(prod_neg.user.id)
        seller = User.find(prod_neg.product.user_id)
        AuctionMailer.accepted_offer_email(buyer, prod_neg, @single_bid).deliver_now
        AuctionMailer.accepted_offer_email(seller, prod_neg, @single_bid).deliver_now
      end
    end
    redirect_to prod_neg_path, notice: 'You accepted the offer'
  end

  def destroy
  end

  private
    def set_single_bids
      @single_bids = SingleBid.all
    end


end
