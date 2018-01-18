class CommentLikeSerializer < ActiveModel::Serializer
  attributes :id, :comment_id, :user_id, :is_like
end
