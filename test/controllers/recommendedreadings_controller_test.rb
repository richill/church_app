require 'test_helper'

class RecommendedreadingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recommendedreading = recommendedreadings(:one)
  end

  test "should get index" do
    get recommendedreadings_url
    assert_response :success
  end

  test "should get new" do
    get new_recommendedreading_url
    assert_response :success
  end

  test "should create recommendedreading" do
    assert_difference('Recommendedreading.count') do
      post recommendedreadings_url, params: { recommendedreading: { fileattachment: @recommendedreading.fileattachment } }
    end

    assert_redirected_to recommendedreading_url(Recommendedreading.last)
  end

  test "should show recommendedreading" do
    get recommendedreading_url(@recommendedreading)
    assert_response :success
  end

  test "should get edit" do
    get edit_recommendedreading_url(@recommendedreading)
    assert_response :success
  end

  test "should update recommendedreading" do
    patch recommendedreading_url(@recommendedreading), params: { recommendedreading: { fileattachment: @recommendedreading.fileattachment } }
    assert_redirected_to recommendedreading_url(@recommendedreading)
  end

  test "should destroy recommendedreading" do
    assert_difference('Recommendedreading.count', -1) do
      delete recommendedreading_url(@recommendedreading)
    end

    assert_redirected_to recommendedreadings_url
  end
end
