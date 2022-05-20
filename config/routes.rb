Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # delete "bookmarks/:id", to: "bookmarks#destroy", as: "delete_book"
  root to: "lists#index"
  resources :lists, only: [:show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: [:create]
  end
  resources :bookmarks, only: [:destroy]
end
