require "test_helper"

class AppBookmarksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_bookmark = app_bookmarks(:one)
  end

  test "should get index" do
    get app_bookmarks_url
    assert_response :success
  end

  test "should get new" do
    get new_app_bookmark_url
    assert_response :success
  end

  test "should create app_bookmark" do
    assert_difference("AppBookmark.count") do
      post app_bookmarks_url, params: { app_bookmark: {} }
    end

    assert_redirected_to app_bookmark_url(AppBookmark.last)
  end

  test "should show app_bookmark" do
    get app_bookmark_url(@app_bookmark)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_bookmark_url(@app_bookmark)
    assert_response :success
  end

  test "should update app_bookmark" do
    patch app_bookmark_url(@app_bookmark), params: { app_bookmark: {} }
    assert_redirected_to app_bookmark_url(@app_bookmark)
  end

  test "should destroy app_bookmark" do
    assert_difference("AppBookmark.count", -1) do
      delete app_bookmark_url(@app_bookmark)
    end

    assert_redirected_to app_bookmarks_url
  end
end
