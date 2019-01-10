Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :sessions => 'users/sessions',
    :omniauth_callbacks => 'users/omniauth_callbacks'
  }
  get 'home/index'
  get '/users' => redirect('/users/sign_up')

  resources :posts
  resources :group_users
  resources :reviews, only: [:create]

  root to: 'home#index'
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
