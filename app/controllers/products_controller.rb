class ProductsController < ApplicationController
	def create
		@product = Product.new (product_params)
		@product.save
		
	end

	#whitelists strong-parameters moved from models to controllers
  private

	  def product_params
	    params.require(:product).permit(:name, :price)
	  end
end
