class CreateIngredientxTags < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredientx_tags do |t|
      t.integer :ingredient_id
      t.integer :ingredient_tag_id

      t.timestamps
    end
  end
end
