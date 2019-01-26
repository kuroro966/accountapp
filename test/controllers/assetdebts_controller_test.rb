require 'test_helper'

class AssetdebtsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get assetdebts_index_url
    assert_response :success
  end

end
