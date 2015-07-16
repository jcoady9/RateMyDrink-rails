class MixedDrink < Drink
  has_many :ingredients

  validates :ingredients, presence: :true,
  						length: { minimum: 1 }

end
