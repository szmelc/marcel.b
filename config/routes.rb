Rails.application.routes.draw do
  scope "(:locale)", locale: /en|pl/ do
    root to: 'homepage#index'
    get '/bio', to: 'bio#index'
    get '/concerts', to: 'concerts#index'
    get '/gallery', to: 'gallery#index'
    get '/projects', to: 'projects#index'
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
