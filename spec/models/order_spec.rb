require 'rails_helper'

describe Order, type: :request do
  context "Test of controller for orders and show routes" do
    describe "GET /orders" do
      it "Should be it works" do
        get orders_path
        expect(response).to have_http_status(200)
      end
    end
  
    describe "GET /show" do
      it "Should render a valid router to order" do
        order = Order.create
        get "/orders/1"
        expect(response).to have_http_status(200)
        expect(response).to render_template(:show)
      end
    end
  end
end
