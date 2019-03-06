require_relative "criteria.rb"
#Define a class Color which is a child of the Criteria class
#Color should have a special initialize function to take input from the user about which color cats they like
#The init function should loop until the user has entered a valid option
class Color < Criteria 
    attr_accessor :cat_characteristic_match, :criteria_description, :criteria_options, :user_inputs
    def initialize(cat_characteristic_match, criteria_description, criteria_options)
        super(cat_characteristic_match, criteria_description, criteria_options)
        @user_inputs = []
        puts "Now i'm going to ask you about colors you like.\nIf you have no preference type in \"none\", otherwise please type your answer according to one of the following options: #{@criteria_options}."
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
        puts "Here are the colors you have told you liked #{@user_inputs}.\nPlease let me know about any additional colors you like otherwise type \"none\". \nHere are the available following options: #{@criteria_options}."
    end

    def check_match (cat_color)
        for color in @user_inputs
            if color == cat_color
                return true
            end
        end
        false
    end

end

#colors =  ["black", "white", "ginger", "tortise shell"]
#criteria_4 = Color.new(:color, "the color of you cat you like", colors)
