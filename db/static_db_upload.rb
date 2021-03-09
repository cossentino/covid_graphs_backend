
require "csv"
require "/Users/iancossentino/Development/code/Mod4/4_project/covid_graphs_backend/app"

statesFile = "/Users/iancossentino/Development/code/Mod4/4_project/Data/nst-est2019-alldata.csv"
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
      puts s.name
    else
      puts "error"
    end
  end
end


create_states_with_population_array(statesFile)
