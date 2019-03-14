# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sector = Sector.create(:name => "Agricultura")
Sector.create(:name => "Industria")
Sector.create(:name => "Comercio")

product = Product.create(:name => "Andamio de carga")
Product.create(:name => "Andamio multidireccional")
Product.create(:name => "Andamio colgante")

