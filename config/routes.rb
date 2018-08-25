Rails.application.routes.draw do
  resources :redeems
  resources :products
  resources :company_report_categories
  resources :categories
  resources :companies
  resources :business_types
  resources :report_parameter_data
  resources :report_parameters
  resources :reports
  resources :report_types
  resources :report_categories
  resources :upzs
  resources :district_areas
  resources :user_profiles
  resources :profiles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
