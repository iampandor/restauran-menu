class CreateIngredientTags < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredient_tags do |t|
      t.string :name
      t.string :tagType

      t.timestamps
    end
  end
end
