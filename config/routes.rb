Rails.application.routes.draw do
  resources :incoming_calls, only: :create do
    resources :status_updates, only: :create, controller: :call_status_updates
  end
end
