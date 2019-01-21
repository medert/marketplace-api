class Api::V1::ProductsController < ApplicationController

  api :GET, '/products', 'List products'
  api :GET, '/products?instock', 'List products with non-zero inventory_count'
  api :GET, '/products?param=value', "List products with specific tiltle, price or inventory_count (example '/products?title=Desk')"
  param :instock, String, allow_nil: true
  param :title, String, allow_nil: false
  param :price, String, allow_nil: false
  param :inventory_count, String, allow_nil: false

  def index
    if params.key?("title")
      @products = Product.where(title: params[:title])
      msg = "Loaded all products with a title '#{params[:title]}'"
    elsif params.key?("price")
      @products = Product.where(price: params[:price])
      msg = "Loaded all products with a price of $#{params[:price]}"
    elsif params.key?("inventory_count")
      @products = Product.where(price: params[:inventory_count])
      msg = "Loaded all products with an inventory of '#{params[:inventory_count]}'"
    elsif params.key?("instock")
      @products = Product.where.not(inventory_count: 0)
      msg = "Loaded all products with a non-zero inventory level'"
    else
      @products = Product.order(id: :asc)
      msg = "Loaded all products in ascending order"
    end
    json_response(msg,@products)
  end


  api :GET, '/products/:id', 'Show a product'
  param :id, :number, asc: 'id of the requested product'

  def show
    @product = Product.find(params[:id])
    # binding.pry
    msg = "Loaded a product with id #{params[:id]}"
    json_response(msg,@product)
  end

  api :GET, '/products/:id/purchase', 'Purchase a product'

  def purchase
    @product = Product.find(params[:product_id])
    current_stock = @product[:inventory_count]
    @products = []
    if current_stock > 0
      updated_stock = current_stock - 1
      @product.update(inventory_count: updated_stock)
      msg = "You have purchase 1 #{@product.title} at $#{@product.price}"
    else
      msg = "'#{@product.title}' is out of stock, therefore not avaliable for purhcase."
    end
    @products.push(@product)

    json_response(msg,@products)
  end

  private
  # permit to accept params below only
  def product_params
    params.permit(:title, :price, :inventory_count, :instock)
  end
end
