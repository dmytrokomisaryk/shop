FactoryBot.define do
  factory :product do
    user { create(:user) }
    name { 'MyString' }
    price { 9.99 }
    form { 1 }
  end
end
