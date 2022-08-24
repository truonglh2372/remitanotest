require "test_helper"

class VideoPostControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string" do
    get video_post_title:string_url
    assert_response :success
  end

  test "should get description:text" do
    get video_post_description:text_url
    assert_response :success
  end

  test "should get body:text" do
    get video_post_body:text_url
    assert_response :success
  end
end
