
# Beer database Schema

# name 			:string(60)
# description 	:string(512)
# rating 		:float
# drink_type 	:string(25)
# abv 			:float

class Beer < Drink

	def self.types
		beer_types = ["Ale", "Bock", "Dunkel", "Lambic", "Pale Ale", "IPA", "Lager", "Stout", 
					"Pilsner"]
	end

end
