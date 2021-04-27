require "test_helper"

class CateBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cate_blog = cate_blogs(:one)
  end

  test "should get index" do
    get cate_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_cate_blog_url
    assert_response :success
  end

  test "should create cate_blog" do
    assert_difference('CateBlog.count') do
      post cate_blogs_url, params: { cate_blog: {  } }
    end

    assert_redirected_to cate_blog_url(CateBlog.last)
  end

  test "should show cate_blog" do
    get cate_blog_url(@cate_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_cate_blog_url(@cate_blog)
    assert_response :success
  end

  test "should update cate_blog" do
    patch cate_blog_url(@cate_blog), params: { cate_blog: {  } }
    assert_redirected_to cate_blog_url(@cate_blog)
  end

  test "should destroy cate_blog" do
    assert_difference('CateBlog.count', -1) do
      delete cate_blog_url(@cate_blog)
    end

    assert_redirected_to cate_blogs_url
  end
end
