class Item < ActiveRecord::Base
  has_many :orders
  has_many :users, through: :orders
  def gross
    order_quantity = Order.where (item_id: id).sum(:quantity)
    (order_quantity * price).to_f
  end

  def users_ordered
    users.count
  end
end