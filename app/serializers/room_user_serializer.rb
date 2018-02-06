class RoomUserSerializer < ActiveModel::Serializer
  attributes :id, :room_id, :user_id, :is_master, :is_typing, :is_turn
end
