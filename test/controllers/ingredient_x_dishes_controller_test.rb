require 'test_helper'

class IngredientXDishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient_x_dish = ingredient_x_dishes(:one)
  end

  test "should get index" do
    get ingredient_x_dishes_url
    assert_response :success
  end

  test "should get new" do
    get new_ingredient_x_dish_url
    assert_response :success
  end

  test "should create ingredient_x_dish" do
    assert_difference('IngredientXDish.count') do
      post ingredient_x_dishes_url, params: { ingredient_x_dish: { dish_id: @ingredient_x_dish.dish_id, ingredient_id: @ingredient_x_dish.ingredient_id, weight: @ingredient_x_dish.weight } }
    end

    assert_redirected_to ingredient_x_dish_url(IngredientXDish.last)
  end

  test "should show ingredient_x_dish" do
    get ingredient_x_dish_url(@ingredient_x_dish)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingredient_x_dish_url(@ingredient_x_dish)
    assert_response :success
  end

  test "should update ingredient_x_dish" do
    patch ingredient_x_dish_url(@ingredient_x_dish), params: { ingredient_x_dish: { dish_id: @ingredient_x_dish.dish_id, ingredient_id: @ingredient_x_dish.ingredient_id, weight: @ingredient_x_dish.weight } }
    assert_redirected_to ingredient_x_dish_url(@ingredient_x_dish)
  end

  test "should destroy ingredient_x_dish" do
    assert_difference('IngredientXDish.count', -1) do
      delete ingredient_x_dish_url(@ingredient_x_dish)
    end

    assert_redirected_to ingredient_x_dishes_url
  end
end
