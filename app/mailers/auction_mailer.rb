class AuctionMailer < ApplicationMailer

  def sample_email(user, product_negotiation, bid)
    @user = user
    @product_negotiation = product_negotiation
    @bid = bid
    @product = Product.find(@product_negotiation.product_id)
    mail(to: @user.email, subject: 'Sample Email')
  end

  def new_offer_email(user, product_negotiation, bid)
    @user = user
    @product_negotiation = product_negotiation
    @bid = bid
    @product = Product.find(@product_negotiation.product_id)
    mail(to: @user.email, subject: 'New Offer')
  end

  def accepted_offer_email(user, product_negotiation, bid)
    @user = user
    @product_negotiation = product_negotiation
    @bid = bid
    @product = Product.find(@product_negotiation.product_id)
    mail(to: @user.email, subject: 'Offer Accepted!')
  end


end
