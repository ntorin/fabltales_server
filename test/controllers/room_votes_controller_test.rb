require 'test_helper'

class RoomVotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_vote = room_votes(:one)
  end

  test "should get index" do
    get room_votes_url, as: :json
    assert_response :success
  end

  test "should create room_vote" do
    assert_difference('RoomVote.count') do
      post room_votes_url, params: { room_vote: { has_agreed: @room_vote.has_agreed, room_id: @room_vote.room_id, room_user_id: @room_vote.room_user_id, user_id: @room_vote.user_id, vote_type: @room_vote.vote_type } }, as: :json
    end

    assert_response 201
  end

  test "should show room_vote" do
    get room_vote_url(@room_vote), as: :json
    assert_response :success
  end

  test "should update room_vote" do
    patch room_vote_url(@room_vote), params: { room_vote: { has_agreed: @room_vote.has_agreed, room_id: @room_vote.room_id, room_user_id: @room_vote.room_user_id, user_id: @room_vote.user_id, vote_type: @room_vote.vote_type } }, as: :json
    assert_response 200
  end

  test "should destroy room_vote" do
    assert_difference('RoomVote.count', -1) do
      delete room_vote_url(@room_vote), as: :json
    end

    assert_response 204
  end
end
