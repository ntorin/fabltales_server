class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :is_group, :last_message, :message_count, :user_count
end
