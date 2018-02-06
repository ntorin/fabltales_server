class RoomSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :story_id, :name, :has_password, :password, :word_limit, :user_count, :turn
end
