Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'home/index'

  devise_for :users
  resources :events

  resources :subscribers do
      resources :homes
  end

  root 'home#index'

  get '/eventos' => 'events#index'
  get '/eventos/:id' => 'events#show'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
