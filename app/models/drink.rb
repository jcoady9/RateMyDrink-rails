class Drink < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	validates :rating, presence: true
end
