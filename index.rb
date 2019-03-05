require "user_requirement.rb"
require "cat.rb"

#Setup a database of cats
#Each cat should be a hash of the following criteria
 #1. The location (symbol) in which the cat is housed
 #2. The neediness of the cat (symbol) which is one of the following options (very needy, needy, relaxed, doesn't care)
 #3. The breed (symbol)
 #4. Color (symbol)
 #5. If the cat is toilet trained (boolean)

felix = Cat.new("Sydney", "relaxed", "Shorthair", "black", true)  
garfield = Cat.new("Dubbo", "needy", "shorthair", "ginger", "true")  
fluffy = Cat.new("Wollongong", "relaxed", "Persian", "black", false)  
max = Cat.new("Sydney", "veryneedy", "sphinx", "white", true)  
princess = Cat.new("Sydney", "needy", "Persian", "white", true)  
simba = Cat.new("Newcastle", "relaxed", "shorthair", "ginger", true)  

#Setup an array to store our cats
cats = [felix, garfield, fluffy, max, princess, simba]
  



#Write some code which pulls out the options based on the cats we've defined
breeds =  ["shorthair", "persian", "sphinx"]
colors =  ["black", "white", "ginger", "tortise shell"]
cities = ["Sydney", "Wollongong", "Newcastle", "Dubbo"]
toilet_trained = ["yes", "no"]


####################################################################################################################

#Define our criteria
criteria_1 = Criteria.new(:location, "the city you live in", cities.join(", "), false, String)
criteria_2 = Criteria.new(:occupancy, "the average hours per week that you expect the cat to be alone", "a number between 1 and 100", true, Integer)
criteria_3 = Criteria.new(:breed, "the type of cat breeds you like", "the following breeds are available #{breeds}", false, String)
criteria_4 = Criteria.new(:color, "the color of you cat you like", colors, false, String)
criteria_5 = Criteria.new(:toilet_trained, "if you need the cat to be toilet trained", "yes or no", true, String)

criteria = [criteria_1, criteria_2, criteria_3, criteria_4, criteria_5]

def print_options (criteria_description, criteria_options)
    puts "Please let me know #{criteria_description}. \nPlease type your answer according to one of the following options: #{criteria_options}."
end

for item in criteria
    print_options(item.criteria_description, item.criteria_options)
    if item.var_type == String
        item.input = gets.chomp
        while !item.criteria_options.include? item.input
            puts "Sorry that was an invalid option."
            print_options(item.criteria_description, item.criteria_options)
            item.input = gets.chomp
        end
    elsif item.var_type == Integer
        item.input = gets.to_i
        #what happens if the user puts in a word
        while (item.input < 1 or item.input > 100)
            puts "Sorry that was an invalide option"
            print_options(item.criteria_description, item.criteria_options)
            item.input = gets.to_i
        end 
    end
end




=begin
#Define a method cat_suitability which takes the user requirements and the cat database as inputs, and loops through the cat database to find cats which are most suitable for the user
def cat_suitability(user_requirements, database)
  #Setup a hash to record the cats which meet the manadory requirements
  result = {}
  #Loop through the database adding the cats which meet the mandorty requirements and record the amount of preferences it meets
  for cat in database
  #Discard the cats which do not meet all the mandatory requirements
  #Record how many preferences each cat meets
  #Return an array of either the highest ranked cat or if there are multiple cats which are the highest return them
  def cat_suitability(database, user_requirements)
=end
  
#Define a method cat_allocation which takes an array of suitable cats and
 #Prints "there are no suitable cats come back later" if the array is empty
 #Prints the cat in the array if the array length is equal to 1
 #Selects a cat at random if the array is length is greater than 1 and then prints this back to the user 