require 'test_helper'

class SetlistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get setlists_index_url
    assert_response :success
  end

  test "should get new" do
    get setlists_new_url
    assert_response :success
  end

  test "should get show" do
    get setlists_show_url
    assert_response :success
  end

end
