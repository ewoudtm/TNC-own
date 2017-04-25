class ProductsController < ApplicationController
  before_action :set_product

  def index
    @products = Product.all
  end

  def show
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


end
