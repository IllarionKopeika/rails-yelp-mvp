# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Stadium.create(name: 'Stamford Bridge', location: 'England', capacity: rand(40_000 - 80_000))
Stadium.create(name: 'Mestalla', location: 'Spain', capacity: rand(40_000 - 80_000))
Stadium.create(name: 'Signal Iduna Park', location: 'Germany', capacity: rand(40_000 - 80_000))
Stadium.create(name: 'Velodrome', location: 'France', capacity: rand(40_000 - 80_000))
Stadium.create(name: 'San Siro', location: 'Italy', capacity: rand(40_000 - 80_000))
