require 'test_helper'

class SmallgroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smallgroup = smallgroups(:one)
  end

  test "should get index" do
    get smallgroups_url
    assert_response :success
  end

  test "should get new" do
    get new_smallgroup_url
    assert_response :success
  end

  test "should create smallgroup" do
    assert_difference('Smallgroup.count') do
      post smallgroups_url, params: { smallgroup: { descriptin: @smallgroup.descriptin, image: @smallgroup.image, name: @smallgroup.name } }
    end

    assert_redirected_to smallgroup_url(Smallgroup.last)
  end

  test "should show smallgroup" do
    get smallgroup_url(@smallgroup)
    assert_response :success
  end

  test "should get edit" do
    get edit_smallgroup_url(@smallgroup)
    assert_response :success
  end

  test "should update smallgroup" do
    patch smallgroup_url(@smallgroup), params: { smallgroup: { descriptin: @smallgroup.descriptin, image: @smallgroup.image, name: @smallgroup.name } }
    assert_redirected_to smallgroup_url(@smallgroup)
  end

  test "should destroy smallgroup" do
    assert_difference('Smallgroup.count', -1) do
      delete smallgroup_url(@smallgroup)
    end

    assert_redirected_to smallgroups_url
  end
end
