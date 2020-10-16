class LineItemsController < ApplicationController
	def create
		@cart = current_cart
		product = Product.find(params[:product_id])
		@line_item=@cart.add_product(product.id)
		respond_to do |format|
		if @line_item.save
			format.html{redirect_to store_url}
		else
			render "new"
		end
		end
	end
end
