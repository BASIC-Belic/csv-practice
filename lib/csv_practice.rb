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
# binding.pry
  return athlete_data
end

#
# p load_data('data/athlete_events.csv')

def total_medals_per_country(olympic_data)

team_data = []

  #total_medals_per_country(olympic_data) - This method takes the array of hashes read in from the file in load_data and returns an array of hashes with each element having a country name (team), and number of medals that country (team) has won. The "Medal" header for the data indicates if the athlete won ('Gold', 'Silver' 'Bronze') or not ('NA').

  athlete_data = load_data(olympic_data)

  #return team_data
  #[{team: , num_metals_won: },
# => ]

end

total_medals_per_country('data/athlete_events.csv')

def save_medal_totals(filename, medal_totals)

end

# Part 2 - More Enumerable Practice

def all_gold_medal_winners(olympic_data)

end

def metals_sorted_by_country(metal_totals)

end

def country_with_most_metals(metal_totals)

end

def athlete_height_in_inches(olympic_data)

end
