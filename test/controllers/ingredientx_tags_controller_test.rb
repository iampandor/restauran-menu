require 'test_helper'

class IngredientxTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredientx_tag = ingredientx_tags(:one)
  end

  test "should get index" do
    get ingredientx_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_ingredientx_tag_url
    assert_response :success
  end

  test "should create ingredientx_tag" do
    assert_difference('IngredientxTag.count') do
      post ingredientx_tags_url, params: { ingredientx_tag: { ingredient_id: @ingredientx_tag.ingredient_id, ingredient_tag_id: @ingredientx_tag.ingredient_tag_id } }
    end

    assert_redirected_to ingredientx_tag_url(IngredientxTag.last)
  end

  test "should show ingredientx_tag" do
    get ingredientx_tag_url(@ingredientx_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingredientx_tag_url(@ingredientx_tag)
    assert_response :success
  end

  test "should update ingredientx_tag" do
    patch ingredientx_tag_url(@ingredientx_tag), params: { ingredientx_tag: { ingredient_id: @ingredientx_tag.ingredient_id, ingredient_tag_id: @ingredientx_tag.ingredient_tag_id } }
    assert_redirected_to ingredientx_tag_url(@ingredientx_tag)
  end

  test "should destroy ingredientx_tag" do
    assert_difference('IngredientxTag.count', -1) do
      delete ingredientx_tag_url(@ingredientx_tag)
    end

    assert_redirected_to ingredientx_tags_url
  end
end
