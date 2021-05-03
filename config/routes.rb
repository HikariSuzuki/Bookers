Rails.application.routes.draw do
  get 'books/def'
  get 'books/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get 'index' => 'books#index',as: 'index'
  get 'new' => 'books#new',as: 'new'
  get 'edit' => 'books#edit',as: 'edit'
  get 'show' => 'books#show',as: 'show'
  post 'new' => 'books#new'
  post 'index' => 'books#index'
  delete 'index/:id' => 'index#destroy'
  get 'books/:id' => 'books#show', as:'book'
  get 'books/:id/edit' => 'books#edit', as:'edit_book'
  patch 'books/:id/edit' => 'books#update',as:'update_book'
  delete 'books/:id' => 'books#destroy', as:'destroy_book'
end