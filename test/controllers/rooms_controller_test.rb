require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get rooms_url, as: :json
    assert_response :success
  end

  test "should create room" do
    assert_difference('Room.count') do
      post rooms_url, params: { room: { has_password: @room.has_password, name: @room.name, password: @room.password, story_id: @room.story_id, user_count: @room.user_count, user_id: @room.user_id, word_limit: @room.word_limit } }, as: :json
    end

    assert_response 201
  end

  test "should show room" do
    get room_url(@room), as: :json
    assert_response :success
  end

  test "should update room" do
    patch room_url(@room), params: { room: { has_password: @room.has_password, name: @room.name, password: @room.password, story_id: @room.story_id, user_count: @room.user_count, user_id: @room.user_id, word_limit: @room.word_limit } }, as: :json
    assert_response 200
  end

  test "should destroy room" do
    assert_difference('Room.count', -1) do
      delete room_url(@room), as: :json
    end

    assert_response 204
  end
end
