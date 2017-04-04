require 'test_helper'

class HogesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get hoges_new_url
    assert_response :success
  end

end
