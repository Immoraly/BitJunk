Rails.application.routes.draw do
  root to:  'home#index'
  devise_for :garbage_man, controllers: { registrations: 'garbage_men/registrations' }
  get 'garbage_men/profile'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
