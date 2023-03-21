require "test_helper"

class OptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get options_show_url
    assert_response :success
  end
end
