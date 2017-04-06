# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    require 'csv'    

    imdb_movies = []
      CSV.foreach( Dir.pwd+'/app/assets/images/movie_metadata.csv', :headers => true) do |row|
        imdb_movies << row

      end


    imdb_movies.first(500).each do |movie|

      title = 'unknown'
      year = 'unknown'
      genre = 'unknown'
      score = 'unknown'
      link = 'unknown'
    
      title = movie[11] 
      year = movie[23] 
      genre = movie[9] 
      score = movie[25] 
      link = movie[17] 

      begin
        Movie.find_or_create_by title: title, year: year, score: score, genre: genre, link: link 
      rescue
        next
      end
    end


