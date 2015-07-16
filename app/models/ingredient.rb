class Ingredient < ActiveRecord::Base
	belongs_to :mixed_drink

	validates :name, presence: :true
	validates :amount, presence: :true

end
