class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :length, :description, :poster_url, :category, :discount

  belongs_to :director
  # NOTE: Added this to include the relationship to the 'reviews' model:
  has_many :reviews
end
