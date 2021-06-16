require "application_system_test_case"

class IngredientTagsTest < ApplicationSystemTestCase
  setup do
    @ingredient_tag = ingredient_tags(:one)
  end

  test "visiting the index" do
    visit ingredient_tags_url
    assert_selector "h1", text: "Ingredient Tags"
  end

  test "creating a Ingredient tag" do
    visit ingredient_tags_url
    click_on "New Ingredient Tag"

    fill_in "Name", with: @ingredient_tag.name
    fill_in "Tagtype", with: @ingredient_tag.tagType
    click_on "Create Ingredient tag"

    assert_text "Ingredient tag was successfully created"
    click_on "Back"
  end

  test "updating a Ingredient tag" do
    visit ingredient_tags_url
    click_on "Edit", match: :first

    fill_in "Name", with: @ingredient_tag.name
    fill_in "Tagtype", with: @ingredient_tag.tagType
    click_on "Update Ingredient tag"

    assert_text "Ingredient tag was successfully updated"
    click_on "Back"
  end

  test "destroying a Ingredient tag" do
    visit ingredient_tags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ingredient tag was successfully destroyed"
  end
end
