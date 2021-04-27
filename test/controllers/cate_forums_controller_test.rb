require "test_helper"

class CateForumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cate_forum = cate_forums(:one)
  end

  test "should get index" do
    get cate_forums_url
    assert_response :success
  end

  test "should get new" do
    get new_cate_forum_url
    assert_response :success
  end

  test "should create cate_forum" do
    assert_difference('CateForum.count') do
      post cate_forums_url, params: { cate_forum: {  } }
    end

    assert_redirected_to cate_forum_url(CateForum.last)
  end

  test "should show cate_forum" do
    get cate_forum_url(@cate_forum)
    assert_response :success
  end

  test "should get edit" do
    get edit_cate_forum_url(@cate_forum)
    assert_response :success
  end

  test "should update cate_forum" do
    patch cate_forum_url(@cate_forum), params: { cate_forum: {  } }
    assert_redirected_to cate_forum_url(@cate_forum)
  end

  test "should destroy cate_forum" do
    assert_difference('CateForum.count', -1) do
      delete cate_forum_url(@cate_forum)
    end

    assert_redirected_to cate_forums_url
  end
end
