Rails.application.routes.draw do

	resources :posts

	resources :categories

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

	root :to => 'home#index'
	
end
