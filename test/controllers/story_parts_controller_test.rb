require 'test_helper'

class StoryPartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @story_part = story_parts(:one)
  end

  test "should get index" do
    get story_parts_url, as: :json
    assert_response :success
  end

  test "should create story_part" do
    assert_difference('StoryPart.count') do
      post story_parts_url, params: { story_part: { part: @story_part.part, story_id: @story_part.story_id, user_id: @story_part.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show story_part" do
    get story_part_url(@story_part), as: :json
    assert_response :success
  end

  test "should update story_part" do
    patch story_part_url(@story_part), params: { story_part: { part: @story_part.part, story_id: @story_part.story_id, user_id: @story_part.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy story_part" do
    assert_difference('StoryPart.count', -1) do
      delete story_part_url(@story_part), as: :json
    end

    assert_response 204
  end
end
