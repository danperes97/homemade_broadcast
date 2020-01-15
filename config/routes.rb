Rails.application.routes.draw do
  resources :videos
  devise_for :users


  get '/videos/watch/:token', to: 'videos#watch', as: :video_watch

  root 'home#index'
end
