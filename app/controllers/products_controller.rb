class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]
  before_action :set_products
  before_action :set_product_negotiation, only: [:show]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attribute(:sold, true)
      @product.save
    end
     redirect_to root_path, notice: "Product Sold!"
  end

  def toggle_accept_offer
    product = Product.find(params[:product_id].to_i)
    change_accept_offer_boolean(product)
  end

  def destroy
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def set_products
      @products = Product.all
  end

  def set_product_negotiation
      @product_negotiation = @product.product_negotiations.find do |pn|
      pn.user_id == current_user.id
    end
  end

  def change_accept_offer_boolean(product)
    new_state = !product.accept_offers
    product.update_attributes(accept_offers: new_state)
    product.save
    redirect_to users_path
  end

end
