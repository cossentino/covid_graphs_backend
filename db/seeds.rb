# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# massachusetts = State.create(name: "Massachusetts", id: 25, region: "northeast", population: 6949503)


middlesex = County.create(name: "Middlesex", fips: 25017, total_cases: 112643, population: 1611699, state_id: 25)
suffolk = County.create(name: "Suffolk", fips: 25025, total_cases: 78922, population: 803907, state_id: 25)
worcester = County.create(name: "Worcester", fips: 25027, total_cases: 65967, population: 830622, state_id: 25)