Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'account#index'
  resources :account, only: [:new, :show] do
    collection do
      post 'income_create'
      post 'expenditure_create'
    end
  end

end
