class RoomVoteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :room_id, :room_user_id, :vote_type, :has_agreed
end
