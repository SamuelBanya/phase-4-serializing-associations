class DirectorMovieSerializer < ActiveModel::Serializer
  attributes :title, :year

  # NOTE: Adding 'has_many' association method to include relationship
  # to 'Reviews' model:
  has_many :reviews
end
