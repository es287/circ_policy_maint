Rails.application.routes.draw do
  resources :circ_policy_groups
  resources :patron_groups
  resources :item_types
  resources :circ_policy_matrices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'maint#home'
end
