require "test_helper"

class FareControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fare_index_url
    assert_response :success
  end

  test "should get show" do
    get fare_show_url
    assert_response :success
  end
end
