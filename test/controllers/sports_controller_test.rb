require 'test_helper'

class SportsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sports_new_url
    assert_response :success
  end

  test "should get create" do
    get sports_create_url
    assert_response :success
  end

  test "should get destroy" do
    get sports_destroy_url
    assert_response :success
  end

end
