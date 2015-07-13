
# drink database schema

# name 			:string(60)
# description 	:string(512)
# rating 		:float
# drink_type 	:string(25)
# abv 			:float

class Drink < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	validates :rating, presence: true
	validates :drink_type, presence: true
	validates :abv, presence: true

	scope :beers, -> { where(type: 'Beer')}

	def types
		stuff = []
	end

	def self.beverage_types
		%w(Beer)
	end

end
