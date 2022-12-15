require "test_helper"

class Public::LikesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get public_likes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get public_likes_destroy_url
    assert_response :success
  end
end
