Rails.application.routes.draw do
  namespace :admin do
    resources :incoming_calls
    resources :call_status_updates
    resources :call_routes
  end

  resources :call_routes do
    resources :incoming_calls, only: :create do
      resources :status_updates, only: :create, controller: :call_status_updates
    end
  end
end
