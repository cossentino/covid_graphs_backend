require "csv"


recent_counties_path = "/Users/iancossentino/Development/code/Mod4/4_project/Data/us-counties-recent.csv"
cleaned_file_path = "/Users/iancossentino/Development/code/Mod4/4_project/Data/us-counties-recent-cleaned.csv"



def add_filler_fips_to_unknowns(csv)
  csv = CSV.read(csv)
  csv.each do |e|
    if e[1] == "Unknown"
      s = State.find_by(name: e[2])
    e[-3] = "#{s.fips_prefix}000"
    puts e
    end
  end
end

add_filler_fips_to_unknowns(recent_counties_path)