Rails.application.routes.draw do
  devise_for :users
  get 'wellcome/index'
  get 'special', to:'wellcome#index'
  resources :articles
  root 'wellcome#index'

  #namespace :api, defaults: { format: "json" } do
    #namespace :v1 do
      #resources :articles
    #end
  #end
  #TODO write url with name space api/v1/articles
  post 'misarticulos/testservice', to:'myarticles#testservice', defaults: { format: "json" } 
  get 'misarticulos/', to:'myarticles#index', defaults: { format: "json" }   
  get 'misarticulos/show/:id', to:'myarticles#show', defaults: { format: "json" }   
  post 'misarticulos/create', to:'myarticles#create', defaults: { format: "json" } 
  delete 'misarticulos/destroy/:id', to:'myarticles#destroy', defaults: { format: "json" }   

  #School services
  post 'schools/', to:'schools#create', defaults: { format: "json" } 
  get 'schools/', to:'schools#index', defaults: { format: "json" } 
  delete 'school/:id', to:'schools#destroy', defaults: { format: "json" } 
  get 'school/:id', to:'schools#show', defaults: { format: "json" } 
  put 'school/:id', to:'schools#update', defaults: { format: "json" } 
  
  #Student services
  post 'students/', to:'students#create', defaults: { format: "json" } 
  get 'students/', to:'students#index', defaults: { format: "json" }
  get 'student/:id', to:'students#show', defaults: { format: "json" }  
  delete 'student/:id', to:'students#destroy', defaults: { format: "json" }  
  put 'student/:id', to:'students#update', defaults: { format: "json" } 
  #Student extra services 
  get 'students/bycompany/:company', to:'students#filterBySchool', defaults: { format: "json" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
