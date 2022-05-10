Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#home"
  get("/home", to: "welcome#home")
  get "/deletion_reason/:id", to: "items#deletion_reason", as: "deletion_reason"
  get("archive", to: "items#archive_index")

  resources :items
end
