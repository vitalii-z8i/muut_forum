require 'test_helper'

class ForumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get forums_index_url
    assert_response :success
  end

  test "should get secure" do
    get forums_secure_url
    assert_response :success
  end

  test "should get authorized" do
    get forums_authorized_url
    assert_response :success
  end

  test "should get commenting" do
    get forums_commenting_url
    assert_response :success
  end

end
