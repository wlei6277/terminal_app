#Define a method called user_info which when called asks the user to enter information on each of the following criteria and returns this in a hash.
#Criteria:
    #1. The city the user lives in
    #2. The average hours in a week which the cat will be alone
    #3. The users preferenece for the breed of the cat
    #4. The users preference for the color of the cat
    #5. Wether the user requires the cat to be toilet trained
#Inlcude a method to print information to user when prompting them to input information
#Include a method to check if the characteristic for a given cat is equal to the users input for that same criteria
require "colorize"

class Criteria
    
    attr_accessor :cat_characteristic_match, :criteria_description, :criteria_options, :mandatory

    def initialize (cat_characteristic_match, criteria_description, criteria_options)
        @cat_characteristic_match = cat_characteristic_match
        @criteria_description = criteria_description
        @criteria_options = criteria_options
        @mandatory = false
        @user_input = ""
    end

    def print_options (criteria_description, criteria_options)
        puts "Please let me know #{@criteria_description}.\nPlease type your answer according to one of the following options: #{@criteria_options}.".colorize(:color => :black, :background => :white)
    end

    def check_match (characteristic)
        if characteristic == @user_input
            true
        else
            false
        end
    end

end