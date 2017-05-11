class AuctionMailer < ApplicationMailer

  def sample_email(user, prod_neg, bid)
    @user = user
    @prod_neg = prod_neg
    @bid = bid
    @product = Product.find(@prod_neg.product_id)
    mail(to: @user.email, subject: 'Sample Email')
  end

  def new_offer_email(user, prod_neg, bid)
    @user = user
    @prod_neg = prod_neg
    @bid = bid
    @product = Product.find(@prod_neg.product_id)
    mail(to: @user.email, subject: 'New Offer')
  end

  def accepted_offer_email(user, prod_neg, bid)
    @user = user
    @prod_neg = prod_neg
    @bid = bid
    @product = Product.find(@prod_neg.product_id)
    mail(to: @user.email, subject: 'Offer Accepted!')
  end


end
