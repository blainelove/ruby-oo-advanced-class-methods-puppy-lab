# Add your code here
require "pry"

class Dog


    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        self.save
    end

    def self.name
        name
    end

    def self.all
        @@all
    end

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        self.all.each {|obj|puts obj.name}
    end

    def save
        self.class.all << self
    end

end



a = Dog.new('a')
b = Dog.new('b')
c = Dog.new('c')
# binding.pry