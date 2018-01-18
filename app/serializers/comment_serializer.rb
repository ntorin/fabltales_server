class CommentSerializer < ActiveModel::Serializer
  attributes :id, :story_id, :user_id, :is_author, :message, :like_count, :dislike_count
end
