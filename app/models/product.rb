class Product < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: {maximum: 20}
  validates :start_price, presence: true
  validates :image, presence: true
  validates :description, presence: true, length: {maximum: 500}
  validates :size, presence: true
end
