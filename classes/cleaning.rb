require_relative "criteria.rb"
#Define a class Cleaning which is a child of the Criteria class
#Cleaning should have a special initialize function to take input from the user about wether they need a cat which is toilet trained or not
#The init function should loop until the user has entered a valid option
class Cleaning < Criteria 
    attr_accessor :cat_characteristic_match, :criteria_description, :criteria_options, :user_input
    def initialize(cat_characteristic_match, criteria_description, criteria_options)
        super(cat_characteristic_match, criteria_description, criteria_options)
        @mandatory = true
        input = ""
        while (input != "yes" and input != "no")
            self.print_options(@criteria_description, @criteria_options)
            input = gets.chomp
            if input == "yes"
                @user_input = true
            elsif input == "no"
                @user_input = false
            else 
                puts "Sorry that was an invalid option."
            end
        end
    end
end

#criteria_5 = Cleaning.new(:toilet_trained, "if you need the cat to be toilet trained", "yes or no")
#criteria_5.check_match(false)