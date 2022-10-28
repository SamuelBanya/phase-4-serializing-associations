class DirectorSerializer < ActiveModel::Serializer
  attributes :id, :name, :birthplace, :female_director

  # NOTE: Commented out since the lab wants to use a modified 'director_movie' serializer instead:
  # has_many :movies

  # Using the 'director_movie' serializer:
  has_many :movies, serializer: DirectorMovieSerializer
end
