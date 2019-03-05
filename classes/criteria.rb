#Define a method called user_info which when called asks the user to enter information on each of the following criteria and returns this in a hash.
#Criteria:
    #1. The city the user lives in
    #2. The average hours in a week which the cat will be alone
    #3. The users preferenece for the breed of the cat
    #4. The users preference for the color of the cat
    #5. Wether the user requires the cat to be toilet trained

class Criteria
    
    attr_accessor :name, :criteria_description, :criteria_options

    def initialize (name, criteria_description, criteria_options, input)
        @name = name
        @criteria_description = criteria_description
        @criteria_options = criteria_options
        @input = nil
    end

    def print_options (criteria_description, criteria_options)
        puts "Please let me know #{@criteria_description}. \nPlease type your answer according to one of the following options: #{@criteria_options}."
    end

end