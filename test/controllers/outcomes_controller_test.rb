require 'test_helper'

class OutcomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get outcomes_index_url
    assert_response :success
  end

end
