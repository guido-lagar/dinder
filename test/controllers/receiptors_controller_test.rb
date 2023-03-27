require "test_helper"

class ReceiptorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get receiptors_new_url
    assert_response :success
  end

  test "should get create" do
    get receiptors_create_url
    assert_response :success
  end
end
