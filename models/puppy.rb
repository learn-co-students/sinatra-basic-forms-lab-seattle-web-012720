# since we are not using ActiveRecord in this lab, you write a bare Ruby model (like you did in MOD1)
class Puppy
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :name, :breed, :age
    def initialize(name, breed, age)
        @name = name
        @breed = breed
        @age = age
        @@all << self
    end

end