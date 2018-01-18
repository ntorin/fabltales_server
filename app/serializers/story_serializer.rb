class StorySerializer < ActiveModel::Serializer
  attributes :id, :title, :passage, :is_editing, :is_complete, :like_count, :view_count
end
