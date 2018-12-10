require 'rails_helper'

RSpec.describe Dashboard::ProductsController do

  let(:url) { '/dashboard/products' }
  let(:user) { create(:user) }
  let(:headers) { { 'Accept' => 'application/json', 'Content-Type' => 'application/json' } }
  let(:auth_headers) { Devise::JWT::TestHelpers.auth_headers(headers, user) }

  describe 'GET #index' do
    subject do
      get url, headers: auth_headers
    end

    it 'returns http success' do
      subject
      expect(response).to have_http_status(:success)
    end

    it 'JSON body response contains expected products' do
      create(:product, user: user)
      subject
      json_response = JSON.parse(response.body)
      serializer = user.products.map{ |product| JSON.parse(ProductSerializer.new(product).to_json) }
      expect(json_response).to match_array(serializer)
    end
  end

  describe 'POST #create' do
    let(:product_attributes) {
      {
        'name': 'example name',
        'price': 10.99,
        'form': 'media'
      }
    }

    subject do
      post url, headers: auth_headers, params: product_attributes.to_json
    end

    it 'returns http success' do
      subject
      expect(response).to have_http_status(:success)
    end

    it 'JSON body response contains expected product' do
      subject
      json_response = JSON.parse(response.body)
      print json_response
      expect(json_response['name']).to eq(product_attributes[:name])
      expect(json_response['price']).to eq(product_attributes[:price])
      expect(json_response['form']).to eq(product_attributes[:form])
    end
  end
end