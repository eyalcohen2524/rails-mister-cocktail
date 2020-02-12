Rails.application.routes.draw do
  get 'doses/index'
  get 'doses/show'
  get 'doses/create'
  get 'doses/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:index, :new, :create, :destroy]
  end
  resources :doses, only: :destroy
end
