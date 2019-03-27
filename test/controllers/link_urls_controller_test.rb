require 'test_helper'

class LinkUrlsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get link_urls_new_url
    assert_response :success
  end

  test "should get index" do
    get link_urls_index_url
    assert_response :success
  end

end
