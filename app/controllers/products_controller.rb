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

end
