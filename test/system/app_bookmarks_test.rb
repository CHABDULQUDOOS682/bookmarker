require "application_system_test_case"

class AppBookmarksTest < ApplicationSystemTestCase
  setup do
    @app_bookmark = app_bookmarks(:one)
  end

  test "visiting the index" do
    visit app_bookmarks_url
    assert_selector "h1", text: "App bookmarks"
  end

  test "should create app bookmark" do
    visit app_bookmarks_url
    click_on "New app bookmark"

    click_on "Create App bookmark"

    assert_text "App bookmark was successfully created"
    click_on "Back"
  end

  test "should update App bookmark" do
    visit app_bookmark_url(@app_bookmark)
    click_on "Edit this app bookmark", match: :first

    click_on "Update App bookmark"

    assert_text "App bookmark was successfully updated"
    click_on "Back"
  end

  test "should destroy App bookmark" do
    visit app_bookmark_url(@app_bookmark)
    accept_confirm { click_on "Destroy this app bookmark", match: :first }

    assert_text "App bookmark was successfully destroyed"
  end
end
