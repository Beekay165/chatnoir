class HomeController < ApplicationController
  def index
  @category = Category.all
  @products = Product.all
  end
end
