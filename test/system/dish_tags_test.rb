require "application_system_test_case"

class DishTagsTest < ApplicationSystemTestCase
  setup do
    @dish_tag = dish_tags(:one)
  end

  test "visiting the index" do
    visit dish_tags_url
    assert_selector "h1", text: "Dish Tags"
  end

  test "creating a Dish tag" do
    visit dish_tags_url
    click_on "New Dish Tag"

    fill_in "Name", with: @dish_tag.name
    fill_in "Tagtype", with: @dish_tag.tagType
    click_on "Create Dish tag"

    assert_text "Dish tag was successfully created"
    click_on "Back"
  end

  test "updating a Dish tag" do
    visit dish_tags_url
    click_on "Edit", match: :first

    fill_in "Name", with: @dish_tag.name
    fill_in "Tagtype", with: @dish_tag.tagType
    click_on "Update Dish tag"

    assert_text "Dish tag was successfully updated"
    click_on "Back"
  end

  test "destroying a Dish tag" do
    visit dish_tags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dish tag was successfully destroyed"
  end
end
