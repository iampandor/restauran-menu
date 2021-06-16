class CreateDishTags < ActiveRecord::Migration[6.0]
  def change
    create_table :dish_tags do |t|
      t.string :name
      t.string :tagType

      t.timestamps
    end
  end
end
