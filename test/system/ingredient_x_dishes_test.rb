require "application_system_test_case"

class IngredientXDishesTest < ApplicationSystemTestCase
  setup do
    @ingredient_x_dish = ingredient_x_dishes(:one)
  end

  test "visiting the index" do
    visit ingredient_x_dishes_url
    assert_selector "h1", text: "Ingredient X Dishes"
  end

  test "creating a Ingredient x dish" do
    visit ingredient_x_dishes_url
    click_on "New Ingredient X Dish"

    fill_in "Dish", with: @ingredient_x_dish.dish_id
    fill_in "Ingredient", with: @ingredient_x_dish.ingredient_id
    fill_in "Weight", with: @ingredient_x_dish.weight
    click_on "Create Ingredient x dish"

    assert_text "Ingredient x dish was successfully created"
    click_on "Back"
  end

  test "updating a Ingredient x dish" do
    visit ingredient_x_dishes_url
    click_on "Edit", match: :first

    fill_in "Dish", with: @ingredient_x_dish.dish_id
    fill_in "Ingredient", with: @ingredient_x_dish.ingredient_id
    fill_in "Weight", with: @ingredient_x_dish.weight
    click_on "Update Ingredient x dish"

    assert_text "Ingredient x dish was successfully updated"
    click_on "Back"
  end

  test "destroying a Ingredient x dish" do
    visit ingredient_x_dishes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ingredient x dish was successfully destroyed"
  end
end
