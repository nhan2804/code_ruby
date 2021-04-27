require "test_helper"

class CateCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cate_course = cate_courses(:one)
  end

  test "should get index" do
    get cate_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_cate_course_url
    assert_response :success
  end

  test "should create cate_course" do
    assert_difference('CateCourse.count') do
      post cate_courses_url, params: { cate_course: {  } }
    end

    assert_redirected_to cate_course_url(CateCourse.last)
  end

  test "should show cate_course" do
    get cate_course_url(@cate_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_cate_course_url(@cate_course)
    assert_response :success
  end

  test "should update cate_course" do
    patch cate_course_url(@cate_course), params: { cate_course: {  } }
    assert_redirected_to cate_course_url(@cate_course)
  end

  test "should destroy cate_course" do
    assert_difference('CateCourse.count', -1) do
      delete cate_course_url(@cate_course)
    end

    assert_redirected_to cate_courses_url
  end
end
