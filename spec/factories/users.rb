FactoryBot.define do
	factory :user do
		email { Faker::Internet.safe_email }
		password { '12345678' }
	end
end