# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Seed the RottenPotatoes DB with some movies.
more_movies = [
  { title: 'My Neighbor Totoro', rating: 'G',
    release_date: Date.parse('16-Apr-1988') },
  { title: 'Green Book', rating: 'PG-13',
    release_date: Date.parse('16-Nov-2018') },
  { title: 'Parasite', rating: 'R',
    release_date: Date.parse('30-May-2019') },
  { title: 'Nomadland', rating: 'R',
    release_date: Date.parse('19-Feb-2021') },
  { title: 'CODA', rating: 'PG-13',
    release_date: Date.parse('13-Aug-2021') },
  { title: 'The Mist', rating: 'R',
    release_date: Date.parse('21-Nov-2007') },
  { title: 'The Grand Budapest Hotel', rating: 'R',
    release_date: Date.parse('07-Mar-2014') },
  { title: 'Stop Making Sense', rating: 'PG',
    release_date: Date.parse('19-Oct-1984') }
]

more_movies.each do |movie_attributes|
  Movie.find_or_create_by!(title: movie_attributes[:title]) do |movie|
    movie.rating = movie_attributes[:rating]
    movie.release_date = movie_attributes[:release_date]
  end
end
