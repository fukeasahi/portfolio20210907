Rails.application.routes.draw do
  # devise_for :caretakers, skip: :all
  # devise_scope :caretakers do
  #   get 'caretakers/sign_up' => 'caretakers/registrations#new'
  #   post 'caretakers' => 'caretakers/registrations#create'
  #   get 'caretakers/sign_in' => 'caretakers/sessions#new'
  #   post 'caretakers/sign_in' => 'caretakers/sessions#create'
  #   delete 'caretakers/sign_out' => 'caretakers/sessions#destroy'
  # end
  get '/caretakers/cleaners' => 'caretakers/cleaners#index'
  get '/caretakers/search' => 'caretakers/cleaners#search'
  
  get '/cleaners/caretakers' => 'cleaners/caretakers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
