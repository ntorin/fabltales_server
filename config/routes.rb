Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
