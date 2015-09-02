class ProductsController < ApplicationController

	#whitelists strong-parameters moved from models to controllers
  private
  def product_params
    params.require(:product).permit(:name, :price)
  end
end
