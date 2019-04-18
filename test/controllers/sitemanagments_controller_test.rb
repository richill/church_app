require 'test_helper'

class SitemanagmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sitemanagment = sitemanagments(:one)
  end

  test "should get index" do
    get sitemanagments_url
    assert_response :success
  end

  test "should get new" do
    get new_sitemanagment_url
    assert_response :success
  end

  test "should create sitemanagment" do
    assert_difference('Sitemanagment.count') do
      post sitemanagments_url, params: { sitemanagment: { homepg_img01: @sitemanagment.homepg_img01, homepg_img02: @sitemanagment.homepg_img02, homepg_img03: @sitemanagment.homepg_img03, homepg_video: @sitemanagment.homepg_video } }
    end

    assert_redirected_to sitemanagment_url(Sitemanagment.last)
  end

  test "should show sitemanagment" do
    get sitemanagment_url(@sitemanagment)
    assert_response :success
  end

  test "should get edit" do
    get edit_sitemanagment_url(@sitemanagment)
    assert_response :success
  end

  test "should update sitemanagment" do
    patch sitemanagment_url(@sitemanagment), params: { sitemanagment: { homepg_img01: @sitemanagment.homepg_img01, homepg_img02: @sitemanagment.homepg_img02, homepg_img03: @sitemanagment.homepg_img03, homepg_video: @sitemanagment.homepg_video } }
    assert_redirected_to sitemanagment_url(@sitemanagment)
  end

  test "should destroy sitemanagment" do
    assert_difference('Sitemanagment.count', -1) do
      delete sitemanagment_url(@sitemanagment)
    end

    assert_redirected_to sitemanagments_url
  end
end
