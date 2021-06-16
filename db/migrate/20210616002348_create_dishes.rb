class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.float :price
      t.boolean :activeDish
      t.integer :menu_id

      t.timestamps
    end
  end
end
