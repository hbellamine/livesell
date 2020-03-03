require 'test_helper'

class LivecastsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get livecasts_index_url
    assert_response :success
  end

  test "should get new" do
    get livecasts_new_url
    assert_response :success
  end

  test "should get create" do
    get livecasts_create_url
    assert_response :success
  end

  test "should get show" do
    get livecasts_show_url
    assert_response :success
  end

  test "should get edit" do
    get livecasts_edit_url
    assert_response :success
  end

  test "should get update" do
    get livecasts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get livecasts_destroy_url
    assert_response :success
  end

end
