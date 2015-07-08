class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :type
      t.string :name, limit: 60
      t.string :description, limit: 512
      t.float :rating, precision: 3, scale: 1
      t.string :drink_type, limit: 25
      t.float :abv, precision: 5, scale: 2
    end
  end
end
