require 'test_helper'

class WeddingGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wedding_group = wedding_groups(:one)
  end

  test "should get index" do
    get wedding_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_wedding_group_url
    assert_response :success
  end

  test "should create wedding_group" do
    assert_difference('WeddingGroup.count') do
      post wedding_groups_url, params: { wedding_group: { name: @wedding_group.name, password: @wedding_group.password } }
    end

    assert_redirected_to wedding_group_url(WeddingGroup.last)
  end

  test "should show wedding_group" do
    get wedding_group_url(@wedding_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_wedding_group_url(@wedding_group)
    assert_response :success
  end

  test "should update wedding_group" do
    patch wedding_group_url(@wedding_group), params: { wedding_group: { name: @wedding_group.name, password: @wedding_group.password } }
    assert_redirected_to wedding_group_url(@wedding_group)
  end

  test "should destroy wedding_group" do
    assert_difference('WeddingGroup.count', -1) do
      delete wedding_group_url(@wedding_group)
    end

    assert_redirected_to wedding_groups_url
  end
end
