require 'test_helper'

class RoomUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_user = room_users(:one)
  end

  test "should get index" do
    get room_users_url, as: :json
    assert_response :success
  end

  test "should create room_user" do
    assert_difference('RoomUser.count') do
      post room_users_url, params: { room_user: { is_master: @room_user.is_master, room_id: @room_user.room_id, user_id: @room_user.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show room_user" do
    get room_user_url(@room_user), as: :json
    assert_response :success
  end

  test "should update room_user" do
    patch room_user_url(@room_user), params: { room_user: { is_master: @room_user.is_master, room_id: @room_user.room_id, user_id: @room_user.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy room_user" do
    assert_difference('RoomUser.count', -1) do
      delete room_user_url(@room_user), as: :json
    end

    assert_response 204
  end
end
