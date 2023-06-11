class OrderAddress
  include ActiveModel::Model
  attr_accessor :post_code, :prefecture_id, :city, :address, :building, :phone, :user_id, :item_id, :token

  with_options presence: true do
    validates :user_id
    validates :item_id
    validates :post_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "にはハイフン(-)を入れて半角数値で入力してください"}
    validates :city
    validates :address
    validates :phone, format: {with: /[0-9]{10,11}/, message: "には半角数値で入力してください"}
    validates :token
  end
  validates :prefecture_id, numericality: {other_than: 1, message: "can't be blank"}

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(post_code: post_code, prefecture_id: prefecture_id, city: city, address: address, building: building, phone: phone, order_id: order.id)
  end

end