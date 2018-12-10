class Product < ApplicationRecord
	belongs_to :user

	enum form: [:media, :voucher]

	validates :price, :form, presence: true
	validates :name, presence: true, uniqueness: true
end
