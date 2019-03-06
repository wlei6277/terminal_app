require_relative "criteria.rb"
#Define a class Location which is a child of the Criteria class
#Location should have a special initialize function to take input from the user about which location they are based in
#The init function should loop until the user has entered a valid option
class Location < Criteria 
    attr_accessor :cat_characteristic_match, :criteria_description, :criteria_options, :user_input
    def initialize(cat_characteristic_match, criteria_description, criteria_options)
        super(cat_characteristic_match, criteria_description, criteria_options)
        @user_input = "null"
        while (!@criteria_options.include? @user_input or @user_input == "")
            self.print_options(@criteria_description, @criteria_options)
            @user_input = gets.chomp
            if (!@criteria_options.include? @user_input or @user_input == "")
                puts "Sorry that was an invalid option."
            end
        end
    end
end
#cities = ["Sydney", "Wollongong", "Newcastle", "Dubbo"]
#criteria_1 = Location.new(:location, "the city you live in", cities.join(", "))