class OrdersController < ApplicationController

  def create
    @order = Order.new(params[:name_of_app])

    respond_to do |format|
      msg = { :status => "200", :message => "Success!" }
      format.json  { render :json => msg }
    end

    if @order.save
      #все гуд
      respond_to do |format|
        msg = { :status => "200", :message => "Success!" }
        format.json  { render :json => msg }
        end
    else
      #что то пошло не так
      respond_to do |format|
        msg = { :status => "400", :message => "Error!" }
        format.json  { render :json => msg }
      end
    end
  end

  def order_params
    params.require(:orders).permit(:name_of_app, :id_of_app, :date, :the_theme, :the_shape, :price_per_kilogram, :weight, :difference_in_days_without_days_off, :difference_in_days_with_days_off, :floor, :price_for_shape_and_floor, :insription, :price_for_insription, :name_of_customer, :phone_of_customer, :there_is_delivery, :address, :exists_in_the_store, :exists_in_the_factory, :is_ready_cake, :ready_cake_time, :is_active)
  end

end
