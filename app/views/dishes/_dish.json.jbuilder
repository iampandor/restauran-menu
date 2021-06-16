json.extract! dish, :id, :name, :description, :price, :activeDish, :menu_id, :created_at, :updated_at
json.url dish_url(dish, format: :json)
