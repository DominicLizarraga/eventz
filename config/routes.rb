Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "events#index"
  get "events", to: "events#index"
  get "events/:id", to: "events#show", as: "event"
  get "events/:id/edit", to: "events#edit", as: "edit_event"

end
