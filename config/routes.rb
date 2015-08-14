Rails.application.routes.draw do
  namespace :api do
    get 'projects.json', to: "projects#index", format: "json"
    get 'projects.xml', to: "projects#index", format: "xml"
  end

  root to: "projects#index"

  resources :projects do
    resources :tasks do
      patch :complete, on: :member
    end
  end
end
