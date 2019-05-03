class CategorySerializer < ActiveModel::Serializer

  include Rails.application.routes.url_helpers
  attributes %w(id title image_url)

  def image_url
    rails_blob_url(object.image)
  end
end
