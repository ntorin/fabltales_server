Rails.application.routes.draw do
  resources :room_votes
  resources :conversation_messages
  resources :conversation_users
  resources :conversations
  resources :comment_likes
  resources :comments
  resources :story_users
  resources :story_parts
  resources :stories
  resources :room_messages
  resources :room_users
  resources :rooms
  mount_devise_token_auth_for 'User', at: 'auth'

  post 'rooms/fetch', to: 'rooms#fetch'
  post 'rooms/join_room', to: 'rooms#join_room'
  post 'rooms/leave_room', to: 'rooms#leave_room'
  post 'rooms/start_story', to: 'rooms#start_story'
  post 'rooms/rename_story', to: 'rooms#rename_story'
  post 'rooms/complete_story', to: 'rooms#complete_story'
  post 'rooms/abandon_story', to: 'rooms#abandon_story'
  post 'rooms/add_part', to: 'rooms#add_part'

end
