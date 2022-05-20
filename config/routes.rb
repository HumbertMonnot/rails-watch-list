Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookmarks, only: [:destroy]
  # delete "bookmarks/:id", to: "bookmarks#destroy", as: "delete_book"
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: [:create]
  end
end
