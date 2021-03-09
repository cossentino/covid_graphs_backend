# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

# State.destroy_all
# County.destroy_all


statesFile = "/Users/iancossentino/Development/code/Mod4/4_project/Data/nst-est2019-alldata.csv"
countiesFile = "/Users/iancossentino/Development/code/Mod4/4_project/Data/us-counties.csv"

state_fips_prefix_file = "/Users/iancossentino/Development/code/Mod4/4_project/Data/fips_prefixes.csv"

# Link counties to states via fips codes

def link_counties_to_states(csv)
  csv = CSV.read(csv)
  csv.delete_at(0)
  csv.each do |e|
    if e[1] != "Unknown"
      prefix = e[3][0..1]
      s = State.find_by(fips_prefix: prefix)
      c = s.counties.build(name: e[1], fips: e[3].to_i)
      if c.save
        puts c.name
      else
        puts "EEEEROOOOOOOOR"
      end
    elsif e[1] == "Unknown"
      s = State.find_by(name: e[2])
      c = s.counties.build(name: "Unknown", fips: "#{s.fips_prefix}000".to_i)
      if c.save
        puts c.name
      else
        puts "UNKNOWN WAS NOT SAVED"
      end
    end
  end
end

link_counties_to_states("/Users/iancossentino/Development/code/Mod4/4_project/Data/us-counties-recent.csv")





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




# Add county names + fips codes to database

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




# def add_fips_prefixes_to_states(csv)
#   csv = CSV.read(csv)
#   csv.each do |e|
#     s = State.find_by(name: e[0])
#     if s
#       s.update(fips_prefix: e[2])
#     end
#   end
# end

# add_fips_prefixes_to_states(state_fips_prefix_file)

# create_states_with_population_array(statesFile)


# middlesex = County.create(name: "Middlesex", fips: 25017, total_cases: 112643, population: 1611699, state_id: 25)
# suffolk = County.create(name: "Suffolk", fips: 25025, total_cases: 78922, population: 803907, state_id: 25)
# worcester = County.create(name: "Worcester", fips: 25027, total_cases: 65967, population: 830622, state_id: 25)


