#Import code from class files into the index file
require_relative "classes/cat.rb"
require_relative "classes/occupancy.rb"
require_relative "classes/cleaning.rb"
require_relative "classes/location.rb"
require_relative "classes/breed.rb"
require_relative "classes/color.rb"


#First we build our database of cats by instantiating a number of objects
#Each cat object has the following attiributes
 #1. A name (string)
 #2. The location (string) in which the cat is housed
 #2. The personality of the cat (string) which is one of the following options (extremely needy, needy, relaxed, very relaxed)
 #3. The breed (string)
 #4. Color (string)
 #5. If the cat is toilet trained (boolean)

snoop = Cat.new("Snoop", "Dubbo", "very relaxed", "persian", "black", false)
felix = Cat.new("Felix","Sydney", "relaxed", "shorthair", "black", true)  
garfield = Cat.new("Garfield", "Dubbo", "needy", "shorthair", "ginger", true)  
fluffy = Cat.new("Fluffy", "Wollongong", "relaxed", "persian", "black", false)  
max = Cat.new("Max", "Sydney", "very needy", "sphinx", "white", true)  
princess = Cat.new("Princess", "Sydney", "needy", "persian", "white", true)  
simba = Cat.new("Simba", "Newcastle", "relaxed", "shorthair", "ginger", true)  

#Setup an array to store all of our cat objects
cats = [felix, garfield, fluffy, max, princess, simba]

#Setup some options for the user criteria
breeds =  ["shorthair", "persian", "sphinx"]
colors =  ["black", "white", "ginger", "tortoiseshell"]
cities = ["Sydney", "Wollongong", "Newcastle", "Dubbo"]
toilet_trained = ["yes", "no"]

#Now we need to instantiate our user criteria
#Each user criteria has the following attributes
#1. An identifier (string) which allows the criteria to match against the relevant cat attribute
#2. A description of the criteria (string), this will be printed to the user when they enter information
#3. A description of the potential options to choose from, this will be printed to the user when they enter information

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

#Define a method which takes a cat database and user criteria as arguments returns a new array of cats in which each criteria has matched against each cat 
#The method should record if each is suitable, that is it's characteristics exactly match each of users criteria for each of the mandatory criteria 
#The method should record for each cat the amount of preferences that match the users criteria.
def rank_cats (cats, user_criteria)
    #Declare an array to prevent the original cats from being mutated
    ranked_cats = cats.clone
    #First loop through each of the user criteria, adding the cat to the suitable cats array if it meets or the mandatory criteria or taking it away if it doesn't 
    for criteria in user_criteria
        for cat in ranked_cats
            #p cat
            if (criteria.mandatory == true and criteria.check_match(cat.send(criteria.cat_characteristic_match)))
                #p "jackpot i've got another match on #{criteria.cat_characteristic_match}. i've got this many matches now #{cat.criteria_matches}"
                cat.criteria_matches += 1
                cat.mandatory_matches.push(true)
            elsif (criteria.mandatory == true and !criteria.check_match(cat.send(criteria.cat_characteristic_match)))
                #p "this criteria was met"
                cat.mandatory_matches.push(false)
            elsif (criteria.check_match(cat.send(criteria.cat_characteristic_match)))
                cat.criteria_matches += 1
                #p "jackpot i've got another match on #{criteria.cat_characteristic_match}. i've got this many matches now #{cat.criteria_matches}"
            end
        end
    end
    ranked_cats
end

#Declare an array which uses our rank_cats method to rank cats according to their matches with the users criteria
ranked_cats = rank_cats(cats, user_criteria)

#Define a method to filter through the cats for those who do not meet all of the mandatory criteria
#The method should return a new array with only the cats which meet all the mandatory criteria
def filter_cats(ranked_cats)
    filtered_cats = []
    for cat in ranked_cats
        condition = true
        cat.mandatory_matches.each{ |item| 
            if (item == false) 
                condition = false
            end
        }
        if condition
            filtered_cats.push(cat)
        end
    end
    filtered_cats
end

#Declare an array which uses the filter_cats method on our ranked_cats array to return a new array containing only the cats which meet all the mandatory criteria
filtered_cats = filter_cats(ranked_cats) 
#p filtered_cats


#Define a method which sorts cats according to the amount of criteria they match.
#The method should loop through each cat placing the cats which match the most criteria at the front of the array.
def sort_cats(suitable_cats)
    suitable_cats.sort_by! {|cat| cat.criteria_matches}
end

#Declare an array to uses our sort_cats method to return a new array of sorted cats 
sorted_cats = sort_cats(filtered_cats)
#p sorted_cats

#Define a method pick_cats which when called asks the user to select a cat from an array of sorted cats.
#The method should print the details of each cat and ask the user to adopt the cat
#If the user wants to adopt the cat exit the program
def pick_cats(sorted_cats)
    if sorted_cats.length == 0
        puts "Sorry there were no cats available which meet your manadorty criteria (toilet training status and personality). Come back another time."
    else
        for cat in sorted_cats
            cat.display_details
            puts "Do you want to adopt #{cat.name}? Please enter yes if you want to or no if you don't."
            input = gets.chomp
            while (input != "yes" and input != "no")
                puts "Sorry that was an invalid option. Please enter yes if you want to or no if you don't."
                input = gets.chomp
            end
            if input == "yes"
                return congratulations(cat)
            end
        end
    puts "Sorry you didn't want any of our cats. Come back another time."
    end
end

def congratulations(cat)
    puts "Congratualitons! #{cat.name} is now yours :)"
end

#Call pick cats with the sorted_cats array to get the user to pick a cat
pick_cats(sorted_cats)
