require 'test_helper'

class DishxTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dishx_tag = dishx_tags(:one)
  end

  test "should get index" do
    get dishx_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_dishx_tag_url
    assert_response :success
  end

  test "should create dishx_tag" do
    assert_difference('DishxTag.count') do
      post dishx_tags_url, params: { dishx_tag: { dish_id: @dishx_tag.dish_id, dish_tag_id: @dishx_tag.dish_tag_id } }
    end

    assert_redirected_to dishx_tag_url(DishxTag.last)
  end

  test "should show dishx_tag" do
    get dishx_tag_url(@dishx_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_dishx_tag_url(@dishx_tag)
    assert_response :success
  end

  test "should update dishx_tag" do
    patch dishx_tag_url(@dishx_tag), params: { dishx_tag: { dish_id: @dishx_tag.dish_id, dish_tag_id: @dishx_tag.dish_tag_id } }
    assert_redirected_to dishx_tag_url(@dishx_tag)
  end

  test "should destroy dishx_tag" do
    assert_difference('DishxTag.count', -1) do
      delete dishx_tag_url(@dishx_tag)
    end

    assert_redirected_to dishx_tags_url
  end
end
