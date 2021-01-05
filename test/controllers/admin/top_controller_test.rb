require "test_helper"

class Admin::TopControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_top_new_url
    assert_response :success
  end
end
