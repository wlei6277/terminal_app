require_relative "criteria.rb"
#Define a class Occupancy which is a child of the Criteria class
#Occupancy should have a special initialize function to take input from the user about how many hours they expect the cat to be at home alone each week
#The init function should loop until the user has entered a valid option
class Occupancy < Criteria 
    attr_accessor :cat_characteristic_match, :criteria_description, :criteria_options, :occupancy, :user_input
    def initialize(cat_characteristic_match, criteria_description, criteria_options)
        super(cat_characteristic_match, criteria_description, criteria_options)
        @mandatory = true
        @occupancy = 0
        @user_input = ""
        while (@occupancy < 1 or @occupancy > 100)
            self.print_options(@criteria_description, @criteria_options)
            @occupancy = gets.to_i
            if (@occupancy < 1 or @occupancy > 100)
                puts "Sorry that was an invalid option."
            else
                if @occupancy < 10
                    @user_input = "extremely needy"
                elsif @occupancy < 20
                    @user_input = "very needy"
                elsif @occupancy < 40
                    @user_input = "needy"
                elsif @occupancy < 80
                    @user_input = "relaxed"
                else
                    @user_input = "very relaxed" 
                end              
            end
        end
    end
end

#criteria_4 = Occupancy.new(:color, "the average hours per week that you expect the cat to be alone", "a number between 1 and 100")
#p criteria_4.personality_match
