module Dashboard
	class ProductsController < ApplicationController
		before_action :authenticate_user!

		def index
			render json: current_user.products, each_serializer: ProductSerializer
		end

		def create
			product = current_user.products.create(product_params)
			render_resource(product)
		end

		private

		def product_params
			params.require(:product).permit(:name, :price, :form)
		end
	end
end