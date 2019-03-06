require_relative "criteria.rb"
#Define a class Breed which is a child of the Criteria class
#Breed should have a special initialize function to take input from the user about which types of breeds they like
#The init function should loop until the user has entered a valid option
#Redefine the print options method for the Breed class to show the user how many breeds they have selected
#Redefine the check_match method so that it checks all breeds   

class Breed < Criteria 
    attr_accessor :cat_characteristic_match, :criteria_description, :criteria_options, :user_inputs
    def initialize(cat_characteristic_match, criteria_description, criteria_options)
        super(cat_characteristic_match, criteria_description, criteria_options)
        @user_inputs = []
        puts "Now i'm going to ask you about breeds you like.\nIf you have no preference type in \"none\", otherwise please type your answer according to one of the following options: #{@criteria_options}."
        input = gets.chomp
        if (input != "none" and !@criteria_options.include? input)
            puts "Sorry that was an invalid option"
        elsif input != "none"
            @user_inputs.unshift(input)
            self.criteria_options.delete(input)
        end
        while (input != "none" and self.criteria_options.length > 0)
            self.print_options(@criteria_description, @criteria_options)
            input = gets.chomp
            if @criteria_options.include? input
                @user_inputs.unshift(input)
                self.criteria_options.delete(input)
            elsif input != "none"
                puts "Sorry that was an invalid option."
            end
        end
    end

    def print_options (criteria_description, criteria_options)
        puts "Here are the breeds you have told you liked #{@user_inputs}.\nPlease let me know about any additional breeds you like otherwise type \"none\".\nHere are the available following options: #{@criteria_options}."
    end

    def check_match(cat_breed)
        for breed in @user_inputs
            if breed == cat_breed
                return true
            end
        end
        false
    end
    
end

#breeds =  ["shorthair", "persian", "sphinx"]
#criteria_3 = Breed.new(:breed, "about other breeds you like", breeds)
#p criteria_3.check_match("sphinx")
#