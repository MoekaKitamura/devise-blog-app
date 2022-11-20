Rails.application.routes.draw do
  root 'blogs#index'
  
  devise_for :users, controllers: { confirmations: 'confirmations' }
  resources :blogs
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
