Rails.application.routes.draw do

  mount Thredded::Engine => '/forum'

  root to: 'thredded/messageboards#index'

  devise_for :users, controllers: {
      registrations: 'users/registrations'
  }

  get '/users/:id' => 'profiles#show'
  get '/users' => 'profiles#index'

  post 'users/profiles/update_curp' => 'profiles#update_curp'
  post 'users/profiles/update_trajectory' => 'profiles#update_trajectory'


end
