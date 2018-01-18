rails g scaffold Room user_id:integer story_id:integer name:string has_password:boolean password:string word_limit:integer user_count:integer
rails g scaffold RoomUser room_id:integer user_id:integer is_master:boolean
rails g scaffold RoomMessage room_id:integer user_id:integer message:text
rails g scaffold Story title:string passage:text is_editing:boolean is_complete:boolean like_count:integer view_count:integer
rails g scaffold StoryPart user_id:integer story_id:integer part:text
rails g scaffold StoryUser story_id:integer user_id:integer
rails g scaffold Comment story_id:integer user_id:integer is_author:boolean message:text like_count:integer dislike_count:integer
rails g scaffold CommentLike comment_id:integer user_id:integer is_like:boolean
rails g scaffold Conversation name:string description:text is_group:boolean last_message:text message_count:integer user_count:integer
rails g scaffold ConversationUser conversation_id:integer user_id:integer role:string unread_count:integer
rails g scaffold ConversationMessage conversation_id:integer user_id:integer message:text

