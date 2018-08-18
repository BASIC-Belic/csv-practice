# csv_practice.rb
require 'csv'
require 'awesome_print'
require 'pry'

# Part 1 - CSV Practice

def load_data(filename)
  #array of hashes saved as csv object
  #each row corresponds to athlete and their data is the hash key and values

  athlete_data = CSV.read(filename, headers: true).map do |athlete|
    athlete.to_hash
  end

  return athlete_data
end

#TEST:
# p load_data('data/athlete_events.csv')

def total_medals_per_country(olympic_data)


  #  athlete_data = load_data(olympic_data)

  current_team_data = olympic_data.group_by do |athlete|
    athlete["Team"]

  end

  current_team_data.each do |country_name, athletes_array|
    athletes_array.delete_if do |athlete|
      athlete["Medal"] == "NA"
    end

  end
  # binding.pry

  current_team_data.map do |country_name, athletes_array|
    {
      country: country_name,
      total_medals: athletes_array.length
    }
    #return country name and length
  end

  #SAME AS ABOVE
  # team_data  =[]
  # current_team_data.each do |country_name, athletes_array|
  #   temporary_hash = {
  #     country: country_name,
  #     total_medals: athletes_array.length
  #   }
  #   team_data << temporary_hash
  #
  #   #return country name and length
  # end
end

# total_medals_per_country('data/athlete_events.csv')

def save_medal_totals(filename, medal_totals)

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
