require 'test_helper'

class BettorsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get bettors_create_url
    assert_response :success
  end

end
