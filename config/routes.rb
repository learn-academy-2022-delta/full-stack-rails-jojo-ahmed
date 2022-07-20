Rails.application.routes.draw do
  get 'blogs' => 'blog#index', as:'blogs'
  post 'blogs' =>'blog#create'
  get 'blog/new' => 'blog#new', as:'entry'
  get 'blogs/:id' => 'blog#show', as:'blog'
  root 'blog#index'
end 
