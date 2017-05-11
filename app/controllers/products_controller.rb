class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :index]
  before_action :set_products, only: [:show]
  before_action :set_prod_neg, only: [:show]

  def index
  end

  def show
  end

  def create
  end

  def update
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

    def set_prod_neg
        @prod_neg = @product.prod_negs.find do |pn|
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
