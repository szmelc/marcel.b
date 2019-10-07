Rails.application.routes.draw do
  devise_for :admin_users
  get '/', to: 'homepage#index'
end
