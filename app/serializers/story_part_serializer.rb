class StoryPartSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :story_id, :part
end
