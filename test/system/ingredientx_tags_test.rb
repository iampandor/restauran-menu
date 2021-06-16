require "application_system_test_case"

class IngredientxTagsTest < ApplicationSystemTestCase
  setup do
    @ingredientx_tag = ingredientx_tags(:one)
  end

  test "visiting the index" do
    visit ingredientx_tags_url
    assert_selector "h1", text: "Ingredientx Tags"
  end

  test "creating a Ingredientx tag" do
    visit ingredientx_tags_url
    click_on "New Ingredientx Tag"

    fill_in "Ingredient", with: @ingredientx_tag.ingredient_id
    fill_in "Ingredient tag", with: @ingredientx_tag.ingredient_tag_id
    click_on "Create Ingredientx tag"

    assert_text "Ingredientx tag was successfully created"
    click_on "Back"
  end

  test "updating a Ingredientx tag" do
    visit ingredientx_tags_url
    click_on "Edit", match: :first

    fill_in "Ingredient", with: @ingredientx_tag.ingredient_id
    fill_in "Ingredient tag", with: @ingredientx_tag.ingredient_tag_id
    click_on "Update Ingredientx tag"

    assert_text "Ingredientx tag was successfully updated"
    click_on "Back"
  end

  test "destroying a Ingredientx tag" do
    visit ingredientx_tags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ingredientx tag was successfully destroyed"
  end
end
