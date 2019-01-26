require 'test_helper'

class LossprofitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lossprofits_index_url
    assert_response :success
  end

end
