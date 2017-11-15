Rails.application.routes.draw do
  devise_for :users
  devise_for :admins

  resources :home, path: 'local' do
    collection do
      get 'timer'
    end
  end
  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
