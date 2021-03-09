
require "csv"

statesFile = "/Users/iancossentino/Development/code/Mod4/4_project/Data/us-states.csv"


# array = [["1/21/20", "Washington", "53", "1", "0"], ["1/22/20", "Washington", "53", "1", "0"], ['1/25/20','Illinois','17','1','0']]


# statesArray = []
# array.each do |e|
#   if !statesArray.include?(e[1])
#     statesArray << e[1]
#   end
# end


def create_unique_states_array(csv)
  csv = CSV.read(csv)
  csv.delete_at(0)
  statesArray = []
  csv.each do |e|
    if !statesArray.include?(e[1])
      statesArray << e[1]
    end
  end
  puts statesArray
end

create_unique_states_array(statesFile)
