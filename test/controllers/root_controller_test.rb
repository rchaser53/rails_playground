require 'test_helper'

class RootControllerTest < ActionDispatch::IntegrationTest
  test "poyo" do
    get root_path
    assert_response :success
    assert_select "title", "poyo"
  end
end
