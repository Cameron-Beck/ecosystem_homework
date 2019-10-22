class Bear

 attr_reader :name, :type, :stomoch

 def initialize(name, type, stomoch)
   @name = name
   @type = type
   @stomoch = []
 end

 def eat_fish
   @stomoch.push("fish3")
 end

 def food_count
   @stomoch.count
 end

 def roar
   return "Rooaaarrrr"
 end

end
