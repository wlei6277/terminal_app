class Cat
    attr_accessor :location, :personality, :breed, :color, :toilet_trained, :criteria_matches
    def initialize(location, personality, breed, color, toilet_trained)
        @location = location
        @personality = personality
        @breed = breed
        @color = color
        @toilet_trained = toilet_trained
        @criteria_matches = 0
    end
  end