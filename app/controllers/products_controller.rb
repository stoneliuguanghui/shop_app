class ProductsController < ApplicationController
	before_action :ser_params,only:[:show,:edit,:update,:destroy]
  def new
  	@product =Product.new
  end

  def create
  	@product = Product.new product_params
  	if @product.save
  		redirect_to @product
  	else
  		render 'new'
  	end
  end

  def index
  	@products = Product.all
  end

  private
  def product_params
  	params.require(:product).permit(:title,:description,:price,:image_url)
  end

  def ser_params
  	@product = Product.find(params[:id])
  end
end
