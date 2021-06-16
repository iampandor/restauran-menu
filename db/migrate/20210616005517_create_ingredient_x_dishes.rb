class CreateIngredientXDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredient_x_dishes do |t|
      t.integer :ingredient_id
      t.integer :dish_id
      t.float :weight

      t.timestamps
    end
  end
end
