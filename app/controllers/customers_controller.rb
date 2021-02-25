class CustomersController < ApplicationController
  def get_all_customers
    @customers = Customer.all
    render json: {data: @customers}, status: 200
  end
  def customer_history
    @customer = Customer.find_by_id(params[:customer_id])
    if !@customer
      return render json: {message: "No customer found"}, status: 400
    end
    @history = History.where(customer_id: params[:customer_id])
    render json: {data: @history}, status: 200
  end
end