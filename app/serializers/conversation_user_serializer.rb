class ConversationUserSerializer < ActiveModel::Serializer
  attributes :id, :conversation_id, :user_id, :role, :unread_count
end
