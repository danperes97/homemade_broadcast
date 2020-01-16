Rails.application.routes.draw do
  devise_for :users


  get '/videos/watch/:token', to: 'videos#watch', as: :video_watch
  get '/videos/search', to: 'videos#search', as: :video_search
  resources :videos

  root 'home#index'
end
