class Restaurant < ApplicationRecord
  belongs_to :category
  has_many :orders
  has_many :reviews
  has_many :product_categories
end
