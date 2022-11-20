Rails.application.routes.draw do

  get 'users/show'
  get 'users/index'
  get 'users/edit'
  devise_for :users
  root to: "homes#top"
  get 'about' => "homes#about", as:"about"


  resources :books, only: [:index, :show, :edit, :create]
  resources :users, only: [:index, :shoe, :edit, :destroy]

end
