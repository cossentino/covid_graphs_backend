require "csv"


# array = [1,2,7,8,9]
# array2 = array.map do |el|
#   index = array.index(el)
#   index == 0 ? el : el - array.fetch(index - 1)
# end

csv = CSV.read('/Users/iancossentino/Development/code/Mod4/4_project/Data/us-states.csv')
csv_alabama = csv.select {|row| row[1] == "Alabama" }
alabama_total_cases_by_day = csv_alabama.map {|row| row[-2]}
puts alabama_total_cases_by_day




# recent_counties_path = "/Users/iancossentino/Development/code/Mod4/4_project/Data/us-counties-recent.csv"
# cleaned_file_path = "/Users/iancossentino/Development/code/Mod4/4_project/Data/us-counties-recent-cleaned.csv"



# def add_filler_fips_to_unknowns(csv)
#   csv = CSV.read(csv)
#   csv.each do |e|
#     if e[1] == "Unknown"
#       s = State.find_by(name: e[2])
#     e[-3] = "#{s.fips_prefix}000"
#     puts e
#     end
#   end
# end

# add_filler_fips_to_unknowns(recent_counties_path)