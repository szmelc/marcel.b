Rails.application.routes.draw do
  root to: 'homepage#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
