Rails.application.routes.draw do
  root 'questions#home'
  get 'answer', to: 'questions#answer'
  get 'ask', to: 'questions#ask'
end

  # get 'about', to: 'pages#about'

  # get 'contact', to: 'pages#contact'

  # get '/', to: 'pages#home'
  # root 'pages#home'

  # get 'restaurants', to: 'restaurants#index'

  # post 'restaurants', to: 'restaurants#create'

  # get 'restaurants/:id', to: 'restaurants#show'


