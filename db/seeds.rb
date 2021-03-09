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
cleaned_file_path = "/Users/iancossentino/Development/code/Mod4/4_project/Data/us-counties-recent-cleaned.csv"
recent_counties_path = "/Users/iancossentino/Development/code/Mod4/4_project/Data/us-counties-recent.csv"
state_fips_prefix_file = "/Users/iancossentino/Development/code/Mod4/4_project/Data/fips_prefixes.csv"


def add_total_cases_to_states(csv)
  csv = CSV.read(csv)
  csv[-55..-1].each do |c|
    s = State.find_by(name: c[1])
    if s
      s.update(total_cases: c[-2].to_i)
    end
  end
end

def add_total_cases_to_counties(csv)
  csv = CSV.read(csv)
  csv[-3246..-1].each do |row|
    if row[1] != "Unknown"
      c = County.find_by(fips: row[-3].to_i)
      if c
        c.update(total_cases: row[-2].to_i)
      end
    end
  end
end

add_total_cases_to_counties("/Users/iancossentino/Development/code/Mod4/4_project/Data/us-counties-recent-cleaned.csv")







# Add FIPS codes to unknown totals 
# def add_filler_fips_to_unknowns(csv)
#   csv = CSV.read(csv)
#   csv.each do |e|
#     if e[1] == "Unknown"
#       s = State.find_by(name: e[2])
#       if s
#         e[-3] = "#{s.fips_prefix}000"
#       end
#     end
#   end
#   CSV.open("/Users/iancossentino/Development/code/Mod4/4_project/Data/us-counties-recent-cleaned.csv", 'wb') { |f| csv.each{|row| f << row}}
# end

# add_filler_fips_to_unknowns(recent_counties_path)



# Ensured all states had an "Unknown" county
# def add_unknown_counties
#   states = State.all
#   states.each do |s|
#     if !s.counties.pluck(:name).include?("Unknown")
#       c = s.counties.build(name: "Unknown", fips: "#{s.fips_prefix}000")
#       if c.save
#         puts s.name
#       else
#         puts "error"
#       end
#     end
#   end
# end



# add_unknown_counties


#Link counties to states

# def link_counties_to_states(csv)
#   csv = CSV.read(csv)
#   csv.delete_at(0)
#   csv.each do |e|
#     # if e[1] != "Unknown"
#     s = State.find_by(name: e[2])
#     if s
#       c = s.counties.build(name: e[1], fips: e[3].to_i)
#       if c.save
#         puts c.name
#       else
#         puts c, "error"
#       end
#     end
#     # elsif e[1] == "Unknown"
#     #   s = State.find_by(name: e[2])
#     #   c = s.counties.build(name: "Unknown", fips: "#{s.fips_prefix}000".to_i)
#     #   if c.save
#     #     puts c.name
#     #   else
#     #     puts "UNKNOWN WAS NOT SAVED"
#     #   end
#   end
# end

# link_counties_to_states(cleaned_file_path)





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


