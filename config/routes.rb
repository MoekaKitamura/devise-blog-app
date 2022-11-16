Rails.application.routes.draw do
  root 'blogs#index'
  
  devise_for :users
  resources :blogs

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
