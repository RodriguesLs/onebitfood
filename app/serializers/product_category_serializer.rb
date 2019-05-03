class ProductCategorySerializer < ActiveModel::Serializer
  attributes %w(id title)
  has_many :products
end
