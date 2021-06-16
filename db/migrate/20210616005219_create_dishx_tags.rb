class CreateDishxTags < ActiveRecord::Migration[6.0]
  def change
    create_table :dishx_tags do |t|
      t.integer :dish_id
      t.integer :dish_tag_id

      t.timestamps
    end
  end
end
