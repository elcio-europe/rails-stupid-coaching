Rails.application.routes.draw do
  get 'pages/answer', to: 'pages#answer'

  get 'pages/ask', to: 'pages#ask'

  root to: 'pages#ask'

  # For details on the DSL available within this
  # file, see http://guides.rubyonrails.org/routing.html
end
