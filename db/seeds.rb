# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'admin', password: 'admin')


movies_list = [
  [ "Forrest Gump", 1994, '72%'],
  [ "Avatar", 2009, '83%' ],
  [ "Pulp Fiction", 1994, '94%' ],
]

movies_list.each do |title, year, rating|
  Movie.create( title: title, year: year, rating: rating )
end