# class Cat
#     attr_reader :location, :personality, :breed, :color, :toilet_trained
#     def initialize(location, personality, breed, color,toilet_trained)
#         @location = location
#         @personality = personality
#         @breed = breed
#         @color = color
#         @toilet_trained
#     end
#   end

# felix = Cat.new("Sydney", "relaxed", "Shorthair", "black", true)  
# garfield = Cat.new("Dubbo", "needy", "shorthair", "ginger", "true")  
# fluffy = Cat.new("Wollongong", "relaxed", "Persian", "black", false)  
# max = Cat.new("Sydney", "veryneedy", "sphinx", "white", true)  
# princess = Cat.new("Sydney", "needy", "Persian", "white", true)  
# simba = Cat.new("Newcastle", "relaxed", "shorthair", "ginger", true)


puts "Welcome to Rescue Cats Matcher! What would you like to do?"
    is_running = true
    while is_running         
        puts "-- Type 'match' to find your purrfect match rescue cat!"
        puts "-- Type 'search' to search our cats by category."
        puts "-- Type 'display' to see all our currently held cats!"
        puts "-- Type 'exit' to exit this program."
    
        start_choice = gets.chomp.downcase
        
        case start_choice
            when "exit" 
            is_running = false

            
            when "match"
                # run code for matching
            
            when 'display'
              
                cat1 = ["Garfield", "Dubbo", "needy", "shorthair", "ginger", "is toilet trained"]
                cat2 = ["Felix", "Sydney", "relaxed", "Shorthair", "black", "is toilet trained"]
                cat3 = ["Fluffy", "Wollongong", "relaxed", "Persian", "black", "is not toilet trained"]
                cat4 = ["Max", "Sydney", "veryneedy", "sphinx", "white", "is toilet trained"]
                cat5 = ["Princess", "Sydney", "needy", "Persian", "white", "is toilet trained"]
                cat6 = ["Simba", "Newcastle", "relaxed", "shorthair", "ginger", "is toilet trained"]

                cats = [cat1, cat2, cat3, cat4, cat5, cat6]
                    cats.each do |name, place, personality, breed, colour, trained|
                        puts "#{name} is a #{colour} #{breed} cat. #{name} is currently housed at our #{place} location and #{trained}."
                        puts "---------------------------"
                    end
                    
            
            # when "search"
            #     puts "What category would you like to search our cats by?"
            #     puts "-- Type 'location' to search by location."
            #     puts "-- Type 'breed' to search by cat breed."
            #     puts "-- Type 'colors' to search our cats by color." 
            #     puts "-- Type 'personality' to search by personality."
            #     puts "-- Type 'trained' to search toilet trained cats." 

            #     option = gets.chomp.downcase

            #     case option
            #         when "location"
            #             puts "Please type a location from the following options: Sydney, Newcastle, Wollongong, Dubbo"




else
puts "You didn't choose a valid option. Please try again."
puts "----------------------------------------------------"
end

end
end 
