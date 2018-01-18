class ConversationMessageSerializer < ActiveModel::Serializer
  attributes :id, :conversation_id, :user_id, :message
end
