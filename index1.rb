#Setup a database of cats
#Each cat should be a hash of the following criteria
 #1. The location (symbol) in which the cat is housed
 #2. The neediness of the cat (symbol) which is one of the following options (very needy, needy, relaxed, doesn't care)
 #3. The breed (symbol)
 #4. Color (symbol)
 #5. If the cat is toilet trained (boolean)

 class Cat
  attr_reader :location, :personality, :breed, :color, :toilet_trained
  def initialize(location, personality, breed, color,toilet_trained)
      @location = location
      @personality = personality
      @breed = breed
      @color = color
      @toilet_trained
  end
end

felix = Cat.new("Sydney", "relaxed", "Shorthair", "black", true)

garfield = Cat.new("Dubbo", "needy", "shorthair", "ginger", "true")

fluffy = Cat.new("Wollongong", "relaxed", "Persian", "black", false)

max = Cat.new("Sydney", "veryneedy", "sphinx", "white", true)

princess = Cat.new("Sydney", "needy", "Persian", "white", true)

simba = Cat.new("Newcastle", "relaxed", "shorthair", "ginger", true)

cats = [felix, garfield, fluffy, max, princes, simba]
puts cats
# # --------------------------------------------------------
#  temp_cat = {
# :location => "sydney", "newcastle", "wollongong", "dubbo"
# :personality => "veryneedy", "needy", "relaxed"
# :breed => "shorthair", "persian", "sphinx"
# :color => "black", "white", "ginger", "tortoiseshell"
# :toilet => true/false

#  }
#----------------------------------------------------------

# garfield = {
# :location => "dubbo",
# :personality => "needy",
# :breed => "shorthair", 
# :color => "ginger",
# :toilet => true
#  }

#  #test
#  garfield.each do |category, selection|
#   puts "#{category}: #{selection}"
# end
#----------------------------------------------------------

# felix = {
# :location => "sydney",
# :personality => "relaxed",
# :breed => "shorthair", 
# :color => "black",
# :toilet => true
#  }

 #----------------------------------------------------------
#  fluffy = {
#   :location => "wollongong",
#   :personality => "relaxed",
#   :breed => "persian", 
#   :color => "black",
#   :toilet => false
#  }
# #----------------------------------------------------------
#  max = {
#   :location => "sydney",
#   :personality => "veryneedy",
#   :breed => "sphinx",
#   :color => "white",
#   :toilet => true
# #  }

#  #----------------------------------------------------------
#  princess = {
#   :location => "sydney",
#   :personality => "needy",
#   :breed => "persian",
#   :color => "white",
#   :toilet => true
#  }
 
#  #----------------------------------------------------------
#  simba = {
#   :location => "newcastle",
#   :personality => "relaxed",
#   :breed => "shorthair",
#   :color => "ginger",
#   :toilet => true
#  }
#Define a method called user_info which when called asks the user to enter information on criteria and stores this in a hash

#Define a method cat_suitability which takes the user requirements and cat database, and loops through the cat database to find cats which are most suitable for the user
  #Discard the cats which do not meet all the mandatory requirements
  #Record how many preferences each cat meets
  #Return an array of either the highest ranked cat or if there are multiple cats which are the highest return them
  
#Define a method cat_allocation which takes an array of suitable cats and
 #Prints "there are no suitable cats come back later" if the array is empty
 #Prints the cat in the array if the array length is equal to 1
 #Selects a cat at random if the array is length is greater than 1 and then prints this back to the user 