class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :delivery_charge
  belongs_to :prefecture
  belongs_to :ship_date

  validates :item_name, presence: true
  with_options presence: true, format: { with: /\A[1-9][0-9]{2,6}\z/, message: 'には300から9,999,999の半角数値で入力してください' } do
    validates :price
  end
  validates :delivery_charge_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :profile, presence: true
  validates :category_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :condition_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :ship_date_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :image, presence: true
  belongs_to :user
  has_one_attached :image
end
