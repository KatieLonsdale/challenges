# data = [
#   ['Frank', 33],
#   ['Stacy', 15],
#   ['Juan', 24],
#   ['Dom', 32],
#   ['Steve', 24],
#   ['Jill', 24]
# ]

# def names_by_age(data)
#   data.sort_by! do |name_and_age|
#     name_and_age.last
#   end
#   data.each{|name_and_age| puts name_and_age.first}
# end

# names_by_age(data)

# def names_and_ages(data)
#   data.each do |name_and_age|
#     puts "#{name_and_age.first} (#{name_and_age.last})"
#   end
# end

# names_and_ages(data)

# def names_with_ages(data)
#   hash = data.group_by{|array| array.last}
#   hash.transform_values do |names_with_ages|
#     names_with_ages.map{|array| array.first}
#   end
# end

# puts names_with_ages(data)

# class StateCapitals

#   @@states = {"Oregon" => "OR",
#             "Alabama" => "AL",
#             "New Jersey" => "NJ",
#             "Colorado" => "CO"}

#   @@capitals = {"OR" => "Salem",
#               "AL" => "Montgomery",
#               "NJ" => "Trenton",
#               "CO" => "Denver"}

#   def self.return_capital(state_name)
#     return "Unknown" if !@@states.has_key?(state_name)
#     abbreviation = @@states[state_name]
#     @@capitals[abbreviation]
#   end

#   def self.return_state(capital_name)
#     return "Unknown" if !@@capitals.has_value?(capital_name)
#     abbreviation = @@capitals.key(capital_name)
#     @@states.key(abbreviation)
#   end
# end

# puts StateCapitals.return_capital('Oregon')
# puts StateCapitals.return_capital('Connecticut')
# puts StateCapitals.return_state("Denver")
# puts StateCapitals.return_state("Hartford")

class Scrabble

  @@scores = {
    "A"=>1, "B"=>3, "C"=>3, "D"=>2,
    "E"=>1, "F"=>4, "G"=>2, "H"=>4,
    "I"=>1, "J"=>8, "K"=>5, "L"=>1,
    "M"=>3, "N"=>1, "O"=>1, "P"=>3,
    "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
    "U"=>1, "V"=>4, "W"=>4, "X"=>8,
    "Y"=>4, "Z"=>10
  }

  def self.return_scores_from_array(word)
    word.each do |letter|
      puts "#{letter} has the value #{@@scores[letter]}"
    end
  end

  def self.return_scores_from_word(word)
    letters = word.upcase.split('')
    letters.each do |letter|
      puts "#{letter} has the value #{@@scores[letter]}"
    end
  end

  def self.return_total_score(word)
    letters = word.upcase.split('')
    score = 0
    letters.each do |letter|
      score += @@scores[letter]
    end
    puts "#{word} has the total score #{score}"
  end
end

# Scrabble.return_scores_from_array(['H', 'E', 'L', 'L', 'O'])
# Scrabble.return_scores_from_word('hello')
Scrabble.return_total_score('hello')

