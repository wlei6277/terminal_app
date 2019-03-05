#Import code from class files into the index file
require_relative "classes/cat.rb"
require_relative "classes/occupancy.rb"
require_relative "classes/cleaning.rb"
require_relative "classes/location.rb"
require_relative "classes/breed.rb"
require_relative "classes/color.rb"


#Setup a database of cats
#Each cat should be a hash of the following criteria
 #1. The location (symbol) in which the cat is housed
 #2. The neediness of the cat (symbol) which is one of the following options (very needy, needy, relaxed, doesn't care)
 #3. The breed (symbol)
 #4. Color (symbol)
 #5. If the cat is toilet trained (boolean)

felix = Cat.new("Sydney", "relaxed", "shorthair", "black", true)  
garfield = Cat.new("Dubbo", "needy", "shorthair", "ginger", true)  
fluffy = Cat.new("Wollongong", "relaxed", "persian", "black", false)  
max = Cat.new("Sydney", "very needy", "sphinx", "white", true)  
princess = Cat.new("Sydney", "needy", "persian", "white", true)  
simba = Cat.new("Newcastle", "relaxed", "shorthair", "ginger", true)  

#Setup an array to store our cats
cats = [felix, garfield, fluffy, max, princess, simba]

#Write some code which pulls out the options based on the cats we've defined
breeds =  ["shorthair", "persian", "sphinx"]
colors =  ["black", "white", "ginger", "tortise shell"]
cities = ["Sydney", "Wollongong", "Newcastle", "Dubbo"]
toilet_trained = ["yes", "no"]

#Instantiate our criteria gathering information from the user 
criteria_1 = Cleaning.new(:toilet_trained, "if you need the cat to be toilet trained", "yes or no")
criteria_2 = Occupancy.new(:personality, "the average hours per week that you expect the cat to be alone", "a number between 1 and 100")
criteria_3 = Location.new(:location, "the city you live in", cities.join(", "))
criteria_4 = Breed.new(:breed, "about other breeds you like", breeds)
criteria_5 = Color.new(:color, "the color of you cat you like", colors)

#Setup an array to store our criteria
user_criteria = [
    criteria_1,
    criteria_2,
    criteria_3,
    criteria_4,
    criteria_5    
]

#Define a method which takes a cat database and user criteria as arguments returns an array of suitable cats as per the users criteria
#The cats within the returned array should exactly match the users requirements on the mandatory criteria
#The method should record for each cat the amount of preferences that match the users criteria. The returned array should sorted by the cats that match the most criteria first.
def allocate_cats (cats, user_criteria)
    #Declare an array to capture the cats that will be returned to the user
    suitable_cats = []
    #First loop through each of the user criteria, adding the cat to the suitable cats array if it meets or the mandatory criteria or taking it away if it doesn't 
    for criteria in user_criteria
        for cat in cats
            p cat
            if (criteria.mandatory == true and criteria.check_match(cat.send(criteria.cat_characteristic_match)))
                cat.criteria_matches += 1
                p "jackpot i've got another match on #{criteria.cat_characteristic_match}. i've got this many matches now #{cat.criteria_matches}"
                if !suitable_cats.include? cat
                    suitable_cats.push(cat)
                end
            elsif (criteria.mandatory == true and !criteria.check_match(cat.send(criteria.cat_characteristic_match)))
                if suitable_cats.include? cat
                    suitable_cats.delete(cat)
                end
            elsif (criteria.check_match(cat.send(criteria.cat_characteristic_match)))
                cat.criteria_matches += 1
                p "jackpot i've got another match on #{criteria.cat_characteristic_match}. i've got this many matches now #{cat.criteria_matches}"
            end
        end
    end
    suitable_cats
end

results = allocate_cats(cats, user_criteria)
p results
for cat in results
    p cat.criteria_matches
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