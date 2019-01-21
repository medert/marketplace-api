require 'rails_helper'

RSpec.describe Api::V1::ProductsController, type: :request do
  let!(:products) { create_list(:product, 3) }
  let(:product_id) { products.first.id }
  let(:title) { products.first.title }
  let(:price) { products.first.price }


  describe 'GET /api/v1/products' do
    before {get '/api/v1/products'}

    it 'returns products' do
      expect(json).not_to be_empty
      expect(json['data'].size).to eq(3)
    end

    it 'return status code 200' do
      expect(response).to have_http_status(200)
    end
  end


  describe 'GET /products?title=value' do
    before {get "/api/v1/products?title=#{title}"}

    it 'returns product with specifit title' do
      expect(json).not_to be_empty
      expect(json['message']).to include("title '#{title}'")
      json['data'] do |product|
        expect(product['title']).to eq(title)
      end
    end

    it 'return status code 200' do
      expect(response).to have_http_status(200)
    end
  end


  describe 'GET /api/v1/products?price=value' do
    before {get "/api/v1/products?price=#{price}"}

    it 'returns product with specifit price' do
      expect(json).not_to be_empty
      expect(json['message']).to include("price of $#{price}")
      json['data'] do |product|
        expect(product['price']).to eq(0)
      end
    end

    it 'return status code 200' do
      expect(response).to have_http_status(200)
    end
  end


  describe 'GET /api/v1/products?instock' do
    before {get "/api/v1/products?instock"}

    it 'returns products with none-zero inventory level' do
      expect(json).not_to be_empty
      expect(json['message']).to include("non-zero inventory level")
      json['data'] do |product|
        expect(product['inventory_count']).to eq(0)
      end
    end

    it 'return status code 200' do
      expect(response).to have_http_status(200)
    end
  end


  describe 'GET /api/v1/products/:id' do
    before {get "/api/v1/products/#{product_id}"}

    it 'returns product' do
      expect(json).not_to be_empty
      json['data'] do |product|
        expect(product['id']).to eq(product_id)
      end
    end
  end
end
