Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :sessions => 'users/sessions',
    :omniauth_callbacks => 'users/omniauth_callbacks'
  }
  get 'home/index'
  get '/users' => redirect('/users/sign_up')

  root to: 'home#index'
end
