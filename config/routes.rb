Rails.application.routes.draw do
  resources :hay_fields
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'hay_fields#index'

  resources 'hay_fields' do
    get 'configure'
    post 'generate_output'
  end
end
