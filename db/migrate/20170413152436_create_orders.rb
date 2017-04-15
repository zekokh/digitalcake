class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :id_order #id заказа номер заказа
      t.string :name_of_app #имя клиента приложения
      t.string :id_of_app #id клиента
      t.string :date #дата на какое надо что бы торт был гоотов
      t.string :the_theme #тема украшения
      t.string :the_shape #форма
      t.string :price_per_kilogram #цена за килограм
      t.string :weight #вес торта
      t.string :difference_in_days_without_days_off #разница без выходных
      t.string :difference_in_days_with_days_off #разница с выходными
      t.string :floor #количество ярусов
      t.string :price_for_shape_and_floor #цена за торт без подложки и доставки и фанеры
      t.string :insription #поздравительная надпись
      t.string :price_for_insription #цеан зв поздравительную надпись
      t.string :name_of_customer #имя клиента
      t.string :phone_of_customer #телефон клиента
      t.boolean :there_is_delivery #есть ли доставка
      t.string :address #адрес клиента если есть доставка
      t.boolean :exists_in_the_store #заявка активна в магазине (у клиента)
      t.boolean :exists_in_the_factory #заявка активна на заводе
      t.boolean :is_ready_cake #торт готов к выдачи
      t.string :ready_cake_time #дата готовности торта
      t.boolean :is_active #заказ не числиться в системе

          t.timestamps
    end
  end
end
