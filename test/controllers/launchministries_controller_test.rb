require 'test_helper'

class LaunchministriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @launchministry = launchministries(:one)
  end

  test "should get index" do
    get launchministries_url
    assert_response :success
  end

  test "should get new" do
    get new_launchministry_url
    assert_response :success
  end

  test "should create launchministry" do
    assert_difference('Launchministry.count') do
      post launchministries_url, params: { launchministry: { address: @launchministry.address, city: @launchministry.city, email: @launchministry.email, firstname: @launchministry.firstname, homenumber: @launchministry.homenumber, lastname: @launchministry.lastname, mininstrydescription: @launchministry.mininstrydescription, mininstryidea: @launchministry.mininstryidea, ministrymission: @launchministry.ministrymission, ministryneed: @launchministry.ministryneed, mobile: @launchministry.mobile, postcode: @launchministry.postcode, worknumber: @launchministry.worknumber } }
    end

    assert_redirected_to launchministry_url(Launchministry.last)
  end

  test "should show launchministry" do
    get launchministry_url(@launchministry)
    assert_response :success
  end

  test "should get edit" do
    get edit_launchministry_url(@launchministry)
    assert_response :success
  end

  test "should update launchministry" do
    patch launchministry_url(@launchministry), params: { launchministry: { address: @launchministry.address, city: @launchministry.city, email: @launchministry.email, firstname: @launchministry.firstname, homenumber: @launchministry.homenumber, lastname: @launchministry.lastname, mininstrydescription: @launchministry.mininstrydescription, mininstryidea: @launchministry.mininstryidea, ministrymission: @launchministry.ministrymission, ministryneed: @launchministry.ministryneed, mobile: @launchministry.mobile, postcode: @launchministry.postcode, worknumber: @launchministry.worknumber } }
    assert_redirected_to launchministry_url(@launchministry)
  end

  test "should destroy launchministry" do
    assert_difference('Launchministry.count', -1) do
      delete launchministry_url(@launchministry)
    end

    assert_redirected_to launchministries_url
  end
end
