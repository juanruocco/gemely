require 'test_helper'

class HobbiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get hobbies_new_url
    assert_response :success
  end

  test "should get create" do
    get hobbies_create_url
    assert_response :success
  end

  test "should get destroy" do
    get hobbies_destroy_url
    assert_response :success
  end

end
