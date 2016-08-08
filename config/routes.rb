Rails.application.routes.draw do
  # Nest employees resources within firms
  resources :firms do
    resources :employees, except: :index
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
