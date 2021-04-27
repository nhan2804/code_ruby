Rails.application.routes.draw do
  resources :cate_blogs
  resources :comments
  resources :cate_courses
  resources :courses
  resources :blogs
  resources :accounts
  resources :cate_forums
  resources :forums
  resources :documents
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
