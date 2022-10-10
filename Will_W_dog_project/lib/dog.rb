class Dog

    def initialize(name,breed,age,bark,favorite_foods)
        @name = name
        @breed = breed
        @bark = bark
        @age = age
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def bark
        return @bark.upcase if @age > 3
        return @bark.downcase
    end
    
    def favorite_foods
        @favorite_foods
    end

    def age=(num)
        @age = num
    end

    def favorite_food?(food)
        return true if favorite_foods.include?(food.capitalize)
        return false
    end

end
