Rails.application.routes.draw do
  namespace :admin do
    resources :incoming_calls
    resources :call_status_updates
  end

  resources :incoming_calls, only: :create do
    resources :status_updates, only: :create, controller: :call_status_updates
  end
end
