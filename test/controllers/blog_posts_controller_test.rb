require 'test_helper'

class BlogPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_post = blog_posts(:one)
  end

  test "should get index" do
    get blog_posts_url
    assert_response :success
  end

  test "should show blog_post" do
    get blog_post_url(@blog_post)
    assert_response :success
  end
end
