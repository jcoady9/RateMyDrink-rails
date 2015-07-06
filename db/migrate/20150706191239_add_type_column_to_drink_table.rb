class AddTypeColumnToDrinkTable < ActiveRecord::Migration
  def change
  	add_column :drinks, :type, :string
  end
end
