Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "homes#index"
  get 'caretakers/properties' => 'caretakers/properties#index'
  get 'caretakers/properties/new' => 'caretakers/properties#new'
  post 'caretakers/properties' => 'caretakers/properties#create', as: 'create_property'
  get 'caretakers/properties/:id' => 'caretakers/properties#show', as: 'property'
  delete 'caretakers/properties/:id' => 'caretakers/properties#destroy'
  get 'caretakers/properties/:id/edit' => 'caretakers/properties#edit', as: 'edit_property'
end
