
# drink database schema

# name 			:string(60)
# description 	:string(512)
# rating 		:float
# drink_type 	:string(25)
# abv 			:float

class Liquor < Drink

	def self.types
		liquor_types = ["Vodka", "Gin", "Brandy", "Rum", "Whiskey"]
	end

end
