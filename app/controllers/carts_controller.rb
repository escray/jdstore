class CartsController < ApplicationController
  def clean
    current_cart.clean!
    flash[:warning] = 'Cleaned!'
    redirect_to carts_path
  end
end
