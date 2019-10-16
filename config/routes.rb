Rails.application.routes.draw do
  scope "(:locale)", locale: /en|pl/ do
    root to: 'homepage#index'
    get '/bio', to: 'bio#index'
    get '/concerts', to: 'concerts#index'
    get '/contact', to: 'contact#index'
    get '/gallery', to: 'gallery#index'
    get '/press', to: 'press#index'
    get '/projects', to: 'projects#index'
  end

  get '/fetch_concerts/:year', to: 'concerts#fetch_concerts', as: 'fetch_concerts'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
