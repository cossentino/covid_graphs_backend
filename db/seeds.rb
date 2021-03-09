# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

State.destroy_all
County.destroy_all


statesFile = "/Users/iancossentino/Development/code/Mod4/4_project/Data/nst-est2019-alldata.csv"
countiesFile = "/Users/iancossentino/Development/code/Mod4/4_project/Data/us-counties.csv"


# Add State names + population to database

# def create_states_with_population_array(csv)
#   csv = CSV.read(csv)
#   csv = csv[6..-1]
#   statesArray = []
#   csv.each do |e|
#     if !statesArray.include?(e[4])
#       statesArray << [e[4], e[5]]
#     end
#   end
#   statesArray.each do |e|
#     s = State.new(name: e[0], population: e[1])
#     if s.save
#       puts s.name
#     else
#       puts "error"
#     end
#   end
# end


# create_states_with_population_array(statesFile)


# middlesex = County.create(name: "Middlesex", fips: 25017, total_cases: 112643, population: 1611699, state_id: 25)
# suffolk = County.create(name: "Suffolk", fips: 25025, total_cases: 78922, population: 803907, state_id: 25)
# worcester = County.create(name: "Worcester", fips: 25027, total_cases: 65967, population: 830622, state_id: 25)


