Rails.application.routes.draw do
  constraints format: :json do
    root "books#index"

    post 'login', to: 'users#login'

    resources :books, only: [:index, :show], shallow: true do
      resources :words, only: :index, on: :member
    end

    resources :words, only: [:show] do
      post 'mark', to: 'marks#word_mark', on: :member
    end
  end
end
