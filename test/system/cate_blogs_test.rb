require "application_system_test_case"

class CateBlogsTest < ApplicationSystemTestCase
  setup do
    @cate_blog = cate_blogs(:one)
  end

  test "visiting the index" do
    visit cate_blogs_url
    assert_selector "h1", text: "Cate Blogs"
  end

  test "creating a Cate blog" do
    visit cate_blogs_url
    click_on "New Cate Blog"

    click_on "Create Cate blog"

    assert_text "Cate blog was successfully created"
    click_on "Back"
  end

  test "updating a Cate blog" do
    visit cate_blogs_url
    click_on "Edit", match: :first

    click_on "Update Cate blog"

    assert_text "Cate blog was successfully updated"
    click_on "Back"
  end

  test "destroying a Cate blog" do
    visit cate_blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cate blog was successfully destroyed"
  end
end
