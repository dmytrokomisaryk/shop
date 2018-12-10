class User < ApplicationRecord
	include Devise::JWT::RevocationStrategies::JTIMatcher
	devise :database_authenticatable, :registerable, :jwt_authenticatable, jwt_revocation_strategy: self

	validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
