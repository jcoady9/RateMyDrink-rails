
# Beer database Schema

# name 			:string(60)
# description 	:string(512)
# rating 		:float
# drink_type 	:string(25)
# abv 			:float

class Beer < Drink

	def valid_beer_type
		# determines whether the drink_type is valid for Beer class
	end

end
