# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

countries_list = [
  "Colombia",
  "Estados Unidos"
]

states_list = [
  ["Norte de Santander", 1],
  ["Cundinamarca", 1],
  ["Santander", 1],
  ["Antioquia", 1],
  ["Colorado", 2],
  ["Michigan", 2]
]

cities_list = [
  ["Cucuta", 1],
  ["Abrego", 1],
  ["Pamplona", 1],
  ["Chinacota", 1],
  ["Medellin", 4],
  ["Bogota", 2],
  ["Bucaramanga", 3],
  ["San Gil", 3],
  ["Socorro", 3],
  ["Denver", 5],
  ["Detroid", 6],
  ["Grand Rapids", 6]
]



countries_list.each do |name|
  Country.create( name: name )
end

states_list.each do |state, country_id|
  State.create( name: state , country_id: country_id)
end

cities_list.each do |city, state_id|
  City.create( name: city , state_id: state_id)
end
