
require "csv"

statesFile = "/Users/iancossentino/Development/code/Mod4/4_project/Data/us-states.csv"
countiesFile = "/Users/iancossentino/Development/code/Mod4/4_project/Data/us-counties.csv"

def create_states_with_population_array(csv)
  csv = CSV.read(csv)
  csv = csv[6..-1]
  statesArray = []
  csv.each do |e|
    if !statesArray.include?(e[4])
      statesArray << [e[4], e[5]]
    end
  end
  statesArray.each do |e|
    s = State.new(name: e[0], population: e[1])
    if s.save
end

def create_states_from_array(array)
  array.each do |e|
    State.new(name: e)




create_unique_states_array(statesFile)
