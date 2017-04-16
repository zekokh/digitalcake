class OrdersController < ApplicationController
  def index

    @client_id = User.find(current_user)
    #@orders = Order.where(id_of_app: @client_id)
    @orders = Order.all
  end

  def create
    begin
      json ||= JSON.parse(RestClient.get 'http://dc.zekoh.ru/get.php')
      if json != null
        json.each do |data|
          @order = Order.create(id_order: data['id'],
                                name_of_app: data['name_of_app'],
                                id_of_app: data['id_of_app'],
                                date: data['date'],
                                the_theme: data['the_theme'],
                                the_shape: data['the_shape'],
                                price_per_kilogram: data['price_per_kilogram'],
                                weight: data['weight'],
                                difference_in_days_without_days_off: data['difference_in_days_without_days_off'],
                                difference_in_days_with_days_off: data['difference_in_days_with_days_off'],
                                floor: data['floor'],
                                price_for_shape_and_floor: data['price_for_shape_and_floor'],
                                insription: data['insription'],
                                price_for_insription: data['price_for_insription'],
                                name_of_customer: data['name_of_customer'],
                                phone_of_customer: data['phone_of_customer'],
                                there_is_delivery: data['there_is_delivery'],
                                address: data['address'],
                                exists_in_the_store: data['exists_in_the_store'],
                                exists_in_the_factory: data['exists_in_the_factory'],
                                is_ready_cake: data['is_ready_cake'],
                                ready_cake_time: data['ready_cake_time'],
                                is_active: data['is_active'],
                                time_of_creation: data['time_of_creation'])
        end
      else
        redirect_to orders_path, notice: 'Новых заявок нет!'
      end
    end
    redirect_to orders_path
  end


  def order_params
    params.require(:orders).permit(:name_of_app, :id_of_app, :date, :the_theme, :the_shape, :price_per_kilogram, :weight, :difference_in_days_without_days_off, :difference_in_days_with_days_off, :floor, :price_for_shape_and_floor, :insription, :price_for_insription, :name_of_customer, :phone_of_customer, :there_is_delivery, :address, :exists_in_the_store, :exists_in_the_factory, :is_ready_cake, :ready_cake_time, :is_active)
  end

end
