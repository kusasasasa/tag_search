Rails.application.routes.draw do
  get 'lists/new'
  get 'lists/index'
  get 'lists/show'
  get 'lists/edit'
  get 'homes/top'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
