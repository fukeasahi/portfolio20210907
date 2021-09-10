Rails.application.routes.draw do
  # devise_for :caretakers, skip: :all
  # devise_scope :caretakers do
  #   get 'caretakers/sign_up' => 'caretakers/registrations#new'
  #   post 'caretakers' => 'caretakers/registrations#create'
  #   get 'caretakers/sign_in' => 'caretakers/sessions#new'
  #   post 'caretakers/sign_in' => 'caretakers/sessions#create'
  #   delete 'caretakers/sign_out' => 'caretakers/sessions#destroy'
  # end
  
  
  # get '/caretakers/cleaners' => 'caretakers/cleaners#index'
  # get '/caretakers/cleaners' => 'caretakers/cleaners#show'
  # get '/caretakers/search' => 'caretakers/cleaners#search'
  get '/caretakers/chat' => 'caretakers/orders#chat'
  get '/caretakers/search' => 'caretakers/cleaners#search'
  get '/caretakers/cleaners/orders' => 'caretakers/orders#index'
  namespace :caretakers do
    resources :cleaners do
      resources :orders, except: [:index]
      resources :reviews, only: [:create, :destroy] 
    end
  end

  namespace :cleaners do
    resources :caretakers
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'caretakers/properties' => 'caretakers/properties#index'
  get 'caretakers/properties/new' => 'caretakers/properties#new'
  post 'caretakers/properties' => 'caretakers/properties#create', as: 'create_property'
  get 'caretakers/properties/:id' => 'caretakers/properties#show', as: 'property'
  delete 'caretakers/properties/:id' => 'caretakers/properties#destroy'
  patch 'caretakers/properties/:id' => 'caretakers/properties#update'
  get 'caretakers/properties/:id/edit' => 'caretakers/properties#edit', as: 'edit_property'
end
