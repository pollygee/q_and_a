class User < ActiveRecord::Base
  has_many :addresses
  # def addresses
  #   return Address.where(user_id: id)
  # end
  has_many :orders
  has_many :items, through: :orders

  # def most_expensive_item
  #   orders = Order.where(user_id: id)
  #   item_ids = orders.pluck :item_id
  #   items = Item.where(id: item_ids)
  # end

end