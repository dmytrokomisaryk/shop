class ProductSerializer < ActiveModel::Serializer
	attributes :id, :name, :price, :form

	belongs_to :user

	def price
		print object.price
		object.price.to_f
	end
end
