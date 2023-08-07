# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    def initialize(name, color = "silver")
        @name = name
        @color = color
    end

    def say(text)
        puts "*~*#{text}*~*"
    end
end

buttercup = Unicorn.new(buttercup)
p buttercup
buttercup.say("yay")

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
    end

    def drink
        @thirsty = false
    end
end

Louis = Vampire.new("Louis")
p Louis
Louis.drink
p Louis

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader :name, :rider, :color, :is_hungry, :times_eaten

    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @times_eaten = 0
    end

#This method is bugged 
    def eat
        @times_eaten = @times_eaten + 1
        if @times_eaten >= 4
            @is_hungry = false
        end
    end
end

dragon_1 = Dragon.new("d1", "r1", "badass")
p dragon_1
dragon_1.eat
dragon_1.eat
dragon_1.eat
dragon_1.eat
p dragon_1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring

    def initialize(name, disposition)
        @name = name
        @disposition = disposition
        @age = 0
        @is_adult = false
        @is_old = false
        @has_ring = false
            if @name == "Frodo"
              @has_ring = true
            end
    end
    
    def celebrate_birthday
        @age = @age + 1 

        if @age >= 33
            @is_adult = true
        end

        if @age >= 101
            @is_old = true
        end
    end
end

hobbit_1 = Hobbit.new("Frodo", "moody")
p hobbit_1
hobbit_2 = Hobbit.new("Sam", "hungry")
p hobbit_2
hobbit_1.celebrate_birthday
p hobbit_1