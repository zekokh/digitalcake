class FactoryController < ApplicationController
  def index
    @orders = Order.where(is_active: true, exists_in_the_factory: true)
  end

  def print
    @order = Order.find(params[:id])
  end

  def ready
    order = Order.find(params[:id])
    order.update(is_ready_cake: true, ready_cake_time: DateTime.now)
    order.save

    redirect_to factory_path, notice: 'Изменения сохранены!'
  end

  def extradition
    order = Order.find(params[:id])
    order.update(extradition: true, time_of_extradition: DateTime.now, is_active: false)
    order.save

    redirect_to factory_path, notice: 'Отличная работа, Мы сделали доброе дело!'
  end
end
