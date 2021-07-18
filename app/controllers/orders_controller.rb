class OrdersController < ApplicationController
  
  def index
    @orders = Order.all.order(id: :desc)
  end

  def show
    @order = Order.includes(:purchases).find(params[:id])
  end

  def create
    order_file = params[:file]
    result = ParseOrderFile.call(file: order_file, locale: :pt)
    @order = result.order 
    respond_to do |format|
      format.js
    end
  end
end
