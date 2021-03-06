require 'test_helper'

class CocktailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cocktail = cocktails(:one)
  end

  test "should get index" do
    get cocktails_url, as: :json
    assert_response :success
  end

  test "should create cocktail" do
    assert_difference('Cocktail.count') do
      post cocktails_url, params: { cocktail: { desc: @cocktail.desc, liquor_id: @cocktail.liquor_id, name: @cocktail.name } }, as: :json
    end

    assert_response 201
  end

  test "should show cocktail" do
    get cocktail_url(@cocktail), as: :json
    assert_response :success
  end

  test "should update cocktail" do
    patch cocktail_url(@cocktail), params: { cocktail: { desc: @cocktail.desc, liquor_id: @cocktail.liquor_id, name: @cocktail.name } }, as: :json
    assert_response 200
  end

  test "should destroy cocktail" do
    assert_difference('Cocktail.count', -1) do
      delete cocktail_url(@cocktail), as: :json
    end

    assert_response 204
  end
end
