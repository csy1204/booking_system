require 'test_helper'

class LockersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lockers_index_url
    assert_response :success
  end

  test "should get show" do
    get lockers_show_url
    assert_response :success
  end

end
