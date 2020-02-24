Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'

  resource :articles #Give us a new article path, to our CRUD operations, new, id/edit, id, destroy/id, (rails routes)

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
