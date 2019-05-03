class RestaurantSerializer < ActiveModel::Serializer

  include Rails.application.routes.url_helpers

  attributes %w(id name description review status delivery_tax state reference
  cep image_url)

  has_many :product_categories, if: -> { @instance_options[:product_categories] }

  def image_url
    rails_blob_url(objetc.image)
  end

  def review
    objetc.reviews&.average(:value)
  end


end
