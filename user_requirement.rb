#Define a method called user_info which when called asks the user to enter information on each of the following criteria and returns this in a hash.
#Criteria:
    #1. The city the user lives in
    #2. The average hours in a week which the cat will be alone
    #3. The users preferenece for the breed of the cat
    #4. The users preference for the color of the cat
    #5. Wether the user requires the cat to be toilet trained

class Criteria
    
    attr_accessor :name, :criteria_description, :criteria_options, :mandatory, :var_type, :input

    def initialize (name, criteria_description, criteria_options, mandatory, var_type)
        @name = name
        @criteria_description = criteria_description
        @criteria_options = criteria_options
        @mandatory = mandatory
        @input = nil
        @var_type = var_type
    end

end



criteria_4.input

#print_options(new_criteria.criteria_description, new_criteria.criteria_specification)

#def user_info
#    user_information = {}
#    location = {
#        criteria_description: "the city you live in",
#        criteria_specification: "how many hours the "}
#    print_options(location[:criteria_description],location[:criteria_specification])
#end
#user_info