require 'test_helper'

class HomePageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_page_home_url
    assert_response :success
  end

  test "should get help" do
    get home_page_help_url
    assert_response :success
  end

end
