require 'test_helper'

class RoomMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_message = room_messages(:one)
  end

  test "should get index" do
    get room_messages_url, as: :json
    assert_response :success
  end

  test "should create room_message" do
    assert_difference('RoomMessage.count') do
      post room_messages_url, params: { room_message: { message: @room_message.message, room_id: @room_message.room_id, user_id: @room_message.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show room_message" do
    get room_message_url(@room_message), as: :json
    assert_response :success
  end

  test "should update room_message" do
    patch room_message_url(@room_message), params: { room_message: { message: @room_message.message, room_id: @room_message.room_id, user_id: @room_message.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy room_message" do
    assert_difference('RoomMessage.count', -1) do
      delete room_message_url(@room_message), as: :json
    end

    assert_response 204
  end
end
