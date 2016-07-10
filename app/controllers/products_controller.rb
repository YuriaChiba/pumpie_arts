class ProductsController < ApplicationController
  before_action :set_product, only: [ :show, :edit, :update, :destroy]
  def index
    @q = Product.order(created_at: :desc).ransack(params[:q])
    @products =@q.result.page(params[:page]).per(15)
    @new_products = Product.order(created_at: :desc).limit(5)
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to "/products/#{@product.id}"
  end

  def edit
  end

  def update
    @product.update(product_params)
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product.destroy
    redirect_to "/products"
  end


  private

  def product_params
    params.require(:product).permit(:title, :category, :size, :detail, :lowest_price, :image_url)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
