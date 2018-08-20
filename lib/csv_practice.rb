# csv_practice.rb
require 'csv'
require 'awesome_print'
require 'pry'

# Part 1 - CSV Practice

#array of hashes saved as csv object
#each row corresponds to athlete and their data is the hash key and values
def load_data(filename)


  athlete_data = CSV.read(filename, headers: true).map do |athlete|
    athlete.to_hash
  end

  return athlete_data
end

#returns array of hashes, team medal totals and team names ad keys
def total_medals_per_country(olympic_data)

  #group data by Team
  #returns hash where key is Team name, with array of hashes embedded
  current_team_data = olympic_data.group_by do |athlete|
    athlete["Team"]

  end

  #iterate through each key of Team/country and delete items in the array of athlete hashes where medal is equal is equal to NA
  current_team_data.each do |country_name, athletes_array|
    athletes_array.delete_if do |athlete|
      athlete["Medal"] == "NA"
    end
  end

  #maps through team/country hash to create new array of hashes, where keys are country name and total medals
  current_team_data.map do |country_name, athletes_array|
    {
      country: country_name,
      total_medals: athletes_array.length
    }
  end
end

# total_medals_per_country('data/athlete_events.csv')

def save_medal_totals(filename, medal_totals)

  # This method writes the medal total information returned from total_medals_per_country to another CSV file provided by filename.

  #we have medal_totals array of hashes [{ :country , :totals}, ]
  #open and write medal_totals to a new csv file
  CSV.open(filename, "wb") do |row|

    row  << ["country", "total_medals"]

    medal_totals.each do |country|

      row << [country[:country], country[:total_medals]]
      ap "#{country}"

    end
  end
end

# Part 2 - More Enumerable Practice

def all_gold_medal_winners(olympic_data)

end

def medals_sorted_by_country(metal_totals)

end

def country_with_most_medals(metal_totals)

end

def athlete_height_in_inches(olympic_data)

end
