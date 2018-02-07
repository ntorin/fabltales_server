Rails.application.routes.draw do
  resources :shop_items
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

  get 'rooms/room_info/:room_id', to: 'rooms#room_info'
  post 'rooms/fetch', to: 'rooms#fetch'
  post 'rooms/start_story', to: 'rooms#start_story'
  post 'rooms/rename_story', to: 'rooms#rename_story'
  post 'rooms/complete_story', to: 'rooms#complete_story'
  post 'rooms/abandon_story', to: 'rooms#abandon_story'
  post 'rooms/add_part', to: 'rooms#add_part'

end
