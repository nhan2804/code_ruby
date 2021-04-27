require "application_system_test_case"

class CateForumsTest < ApplicationSystemTestCase
  setup do
    @cate_forum = cate_forums(:one)
  end

  test "visiting the index" do
    visit cate_forums_url
    assert_selector "h1", text: "Cate Forums"
  end

  test "creating a Cate forum" do
    visit cate_forums_url
    click_on "New Cate Forum"

    click_on "Create Cate forum"

    assert_text "Cate forum was successfully created"
    click_on "Back"
  end

  test "updating a Cate forum" do
    visit cate_forums_url
    click_on "Edit", match: :first

    click_on "Update Cate forum"

    assert_text "Cate forum was successfully updated"
    click_on "Back"
  end

  test "destroying a Cate forum" do
    visit cate_forums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cate forum was successfully destroyed"
  end
end
