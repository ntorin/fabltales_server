class RoomUserSerializer < ActiveModel::Serializer
  attributes :id, :room_id, :user_id, :is_master
end
