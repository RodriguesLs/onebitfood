class OrderSerializer < ActiveModel::Serializer
  attributes %w(id restaurant_id total_value status)
end
