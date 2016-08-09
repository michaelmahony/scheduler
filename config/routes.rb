Rails.application.routes.draw do
  # Nest employees resources within firms
  resources :firms do
    resources :employees, except: :index
  end
  get '/firms/:firm_id/employees/:id/edit_preferences', to: 'employees#edit_preferences', as: 'edit_preferences'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
