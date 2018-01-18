require 'test_helper'

class StoryUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @story_user = story_users(:one)
  end

  test "should get index" do
    get story_users_url, as: :json
    assert_response :success
  end

  test "should create story_user" do
    assert_difference('StoryUser.count') do
      post story_users_url, params: { story_user: { story_id: @story_user.story_id, user_id: @story_user.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show story_user" do
    get story_user_url(@story_user), as: :json
    assert_response :success
  end

  test "should update story_user" do
    patch story_user_url(@story_user), params: { story_user: { story_id: @story_user.story_id, user_id: @story_user.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy story_user" do
    assert_difference('StoryUser.count', -1) do
      delete story_user_url(@story_user), as: :json
    end

    assert_response 204
  end
end
