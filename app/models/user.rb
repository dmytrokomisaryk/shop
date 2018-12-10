class User < ApplicationRecord
	include Devise::JWT::RevocationStrategies::JTIMatcher
	devise :database_authenticatable, :registerable, :jwt_authenticatable, jwt_revocation_strategy: self

	has_many :products

	validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
	validates :password, presence: true
end
