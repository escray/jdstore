class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "Add #{@product.title} to Cart Successfully"
    else
      flash[:warning] = 'Your Cart already have this item.'
    end
    redirect_to :back
  end
end
