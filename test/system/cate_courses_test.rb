require "application_system_test_case"

class CateCoursesTest < ApplicationSystemTestCase
  setup do
    @cate_course = cate_courses(:one)
  end

  test "visiting the index" do
    visit cate_courses_url
    assert_selector "h1", text: "Cate Courses"
  end

  test "creating a Cate course" do
    visit cate_courses_url
    click_on "New Cate Course"

    click_on "Create Cate course"

    assert_text "Cate course was successfully created"
    click_on "Back"
  end

  test "updating a Cate course" do
    visit cate_courses_url
    click_on "Edit", match: :first

    click_on "Update Cate course"

    assert_text "Cate course was successfully updated"
    click_on "Back"
  end

  test "destroying a Cate course" do
    visit cate_courses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cate course was successfully destroyed"
  end
end
