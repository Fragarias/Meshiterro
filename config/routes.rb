Rails.application.routes.draw do
  devise_for :users
  # get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'homes/about', as: 'about'
  root to: "homes#top"

  # get 'post_images/new'
  # get 'post_images/index'
  # get 'post_images/show'
  resources :post_images, only: [:new, :index, :show]

end
