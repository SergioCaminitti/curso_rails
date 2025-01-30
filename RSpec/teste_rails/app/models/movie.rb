class Movie < ApplicationRecord
  validates :title, presence: true
  validates :duration, numericality: {greather_than: 0}

  #método para calcular a duração dos filmes
  def self.average_duration
    total_duration = Movie.sum(:duration)
    total_movies = Movie.count
    return nil if total_movies.zero?
    total_duration / total_movies
  end
end
