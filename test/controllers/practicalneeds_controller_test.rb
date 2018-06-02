require 'test_helper'

class PracticalneedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @practicalneed = practicalneeds(:one)
  end

  test "should get index" do
    get practicalneeds_url
    assert_response :success
  end

  test "should get new" do
    get new_practicalneed_url
    assert_response :success
  end

  test "should create practicalneed" do
    assert_difference('Practicalneed.count') do
      post practicalneeds_url, params: { practicalneed: { approve: @practicalneed.approve, category_job_id: @practicalneed.category_job_id, category_jobtype_id: @practicalneed.category_jobtype_id, close: @practicalneed.close, description: @practicalneed.description, location: @practicalneed.location, title: @practicalneed.title, user_id: @practicalneed.user_id } }
    end

    assert_redirected_to practicalneed_url(Practicalneed.last)
  end

  test "should show practicalneed" do
    get practicalneed_url(@practicalneed)
    assert_response :success
  end

  test "should get edit" do
    get edit_practicalneed_url(@practicalneed)
    assert_response :success
  end

  test "should update practicalneed" do
    patch practicalneed_url(@practicalneed), params: { practicalneed: { approve: @practicalneed.approve, category_job_id: @practicalneed.category_job_id, category_jobtype_id: @practicalneed.category_jobtype_id, close: @practicalneed.close, description: @practicalneed.description, location: @practicalneed.location, title: @practicalneed.title, user_id: @practicalneed.user_id } }
    assert_redirected_to practicalneed_url(@practicalneed)
  end

  test "should destroy practicalneed" do
    assert_difference('Practicalneed.count', -1) do
      delete practicalneed_url(@practicalneed)
    end

    assert_redirected_to practicalneeds_url
  end
end
