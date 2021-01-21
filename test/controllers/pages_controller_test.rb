require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get chatrooms" do
    get pages_chatrooms_url
    assert_response :success
  end

end
