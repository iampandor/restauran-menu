require 'test_helper'

class IngredientTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient_tag = ingredient_tags(:one)
  end

  test "should get index" do
    get ingredient_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_ingredient_tag_url
    assert_response :success
  end

  test "should create ingredient_tag" do
    assert_difference('IngredientTag.count') do
      post ingredient_tags_url, params: { ingredient_tag: { name: @ingredient_tag.name, tagType: @ingredient_tag.tagType } }
    end

    assert_redirected_to ingredient_tag_url(IngredientTag.last)
  end

  test "should show ingredient_tag" do
    get ingredient_tag_url(@ingredient_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingredient_tag_url(@ingredient_tag)
    assert_response :success
  end

  test "should update ingredient_tag" do
    patch ingredient_tag_url(@ingredient_tag), params: { ingredient_tag: { name: @ingredient_tag.name, tagType: @ingredient_tag.tagType } }
    assert_redirected_to ingredient_tag_url(@ingredient_tag)
  end

  test "should destroy ingredient_tag" do
    assert_difference('IngredientTag.count', -1) do
      delete ingredient_tag_url(@ingredient_tag)
    end

    assert_redirected_to ingredient_tags_url
  end
end
