class ProductsController < ApplicationController
  def index
    @product = Product.new
  end


  def add
      @product = Product.create(name: params[:product][:name])
      cart << @product.name

      redirect_to('/')
  end


end
