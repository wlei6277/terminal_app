#Define a class Cat to build our cat database
#The cat object should have a method to print out it's details
require "colorize"

#puts "hello".colorize(:color => :black, :background => :white)
class Cat
    attr_accessor :name, :location, :personality, :breed, :color, :toilet_trained, :criteria_matches, :mandatory_matches
    def initialize(name, location, personality, breed, color, toilet_trained)
        @name = name
        @location = location
        @personality = personality
        @breed = breed
        @color = color
        @toilet_trained = toilet_trained
        @criteria_matches = 0
        @mandatory_matches = []
    end
    def display_details
        puts "This is #{@name}."
        puts "It matches #{criteria_matches} of your criteria."
        puts "It has a #{@personality} personality."
        puts "It's a #{@breed} breed."
        puts "It's #{@color}."
        puts "It's housed in #{@location}."
        puts "It's toilet training status is #{@toilet_trained}."
    end
  end