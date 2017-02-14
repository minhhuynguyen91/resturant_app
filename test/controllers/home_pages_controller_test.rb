require 'test_helper'

class HomePagesControllerTest < ActionDispatch::IntegrationTest
  test "should get menu" do
    get home_pages_menu_url
    assert_response :success
  end

  test "should get contact_us" do
    get home_pages_contact_us_url
    assert_response :success
  end

end
