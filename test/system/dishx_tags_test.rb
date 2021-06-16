require "application_system_test_case"

class DishxTagsTest < ApplicationSystemTestCase
  setup do
    @dishx_tag = dishx_tags(:one)
  end

  test "visiting the index" do
    visit dishx_tags_url
    assert_selector "h1", text: "Dishx Tags"
  end

  test "creating a Dishx tag" do
    visit dishx_tags_url
    click_on "New Dishx Tag"

    fill_in "Dish", with: @dishx_tag.dish_id
    fill_in "Dish tag", with: @dishx_tag.dish_tag_id
    click_on "Create Dishx tag"

    assert_text "Dishx tag was successfully created"
    click_on "Back"
  end

  test "updating a Dishx tag" do
    visit dishx_tags_url
    click_on "Edit", match: :first

    fill_in "Dish", with: @dishx_tag.dish_id
    fill_in "Dish tag", with: @dishx_tag.dish_tag_id
    click_on "Update Dishx tag"

    assert_text "Dishx tag was successfully updated"
    click_on "Back"
  end

  test "destroying a Dishx tag" do
    visit dishx_tags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dishx tag was successfully destroyed"
  end
end
