class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.float :amount

      # add ingredients id to drinks table
      t.references :drink, index: true
    end

    add_foreign_key :ingredients, :drinks
  end
end
