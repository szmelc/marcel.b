Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  scope "(:locale)", locale: /en|pl/ do
    root to: 'homepage#index'
    get '/news', to: 'news#index'
    get '/news/:id', to: 'news#show', as: 'news_item'
    get '/bio', to: 'bio#index'
    get '/concerts', to: 'concerts#index'
    get '/contact', to: 'contact#index'
    get '/gallery', to: 'gallery#index'
    get '/media', to: 'media#index'
    get '/projects', to: 'projects#index'
    get '/albums', to: 'albums#index'
  end

  get '/fetch_concerts/:year', to: 'concerts#fetch_concerts', as: 'fetch_concerts'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
