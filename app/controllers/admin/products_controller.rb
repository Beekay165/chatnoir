# frozen_string_literal: true

class Admin::ProductsController < Admin::BaseController
  def index
    @products = Product.all
  end

  def create
    # render plain: params[:product].inspect
    @product = Product.new(product_params)

    if @product.save
      flash[:notice] = 'Product was successfully created'
      redirect_to edit_admin_product_path(@product)
    else
      render 'new'
    end
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def show
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = 'Product was successfully updated'
      redirect_to edit_admin_product_path(@product)
    else
      render 'edit'
    end
  end

  def destroy; end

  private

  # define the product_params
  def product_params
    params.require(:product).permit(:name, :description, :price, :stock, :image, :artist_name, :sku, category_ids: [], variant_ids: [])
  end
end
