require "test_helper"

class TopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get top_index_url
    assert_response :success
  end

  test "should get new" do
    get top_new_url
    assert_response :success
  end

  test "should get create" do
    get top_create_url
    assert_response :success
  end

  test "should get destroy" do
    get top_destroy_url
    assert_response :success
  end
end
