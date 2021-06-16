class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.float :cEnergy
      t.float :cProtein

      t.timestamps
    end
  end
end
