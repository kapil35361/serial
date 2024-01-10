require "test_helper"

class V1::ManagersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get v1_managers_index_url
    assert_response :success
  end

  test "should get show" do
    get v1_managers_show_url
    assert_response :success
  end
end
