require 'test_helper'

class DishTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dish_tag = dish_tags(:one)
  end

  test "should get index" do
    get dish_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_dish_tag_url
    assert_response :success
  end

  test "should create dish_tag" do
    assert_difference('DishTag.count') do
      post dish_tags_url, params: { dish_tag: { name: @dish_tag.name, tagType: @dish_tag.tagType } }
    end

    assert_redirected_to dish_tag_url(DishTag.last)
  end

  test "should show dish_tag" do
    get dish_tag_url(@dish_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_dish_tag_url(@dish_tag)
    assert_response :success
  end

  test "should update dish_tag" do
    patch dish_tag_url(@dish_tag), params: { dish_tag: { name: @dish_tag.name, tagType: @dish_tag.tagType } }
    assert_redirected_to dish_tag_url(@dish_tag)
  end

  test "should destroy dish_tag" do
    assert_difference('DishTag.count', -1) do
      delete dish_tag_url(@dish_tag)
    end

    assert_redirected_to dish_tags_url
  end
end
