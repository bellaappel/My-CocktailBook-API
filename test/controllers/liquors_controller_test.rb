require 'test_helper'

class LiquorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @liquor = liquors(:one)
  end

  test "should get index" do
    get liquors_url, as: :json
    assert_response :success
  end

  test "should create liquor" do
    assert_difference('Liquor.count') do
      post liquors_url, params: { liquor: { brand: @liquor.brand, name: @liquor.name, proof: @liquor.proof } }, as: :json
    end

    assert_response 201
  end

  test "should show liquor" do
    get liquor_url(@liquor), as: :json
    assert_response :success
  end

  test "should update liquor" do
    patch liquor_url(@liquor), params: { liquor: { brand: @liquor.brand, name: @liquor.name, proof: @liquor.proof } }, as: :json
    assert_response 200
  end

  test "should destroy liquor" do
    assert_difference('Liquor.count', -1) do
      delete liquor_url(@liquor), as: :json
    end

    assert_response 204
  end
end
