require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users

  mount Sidekiq::Web => '/sidekiq'

  post '/handle' => 'say#handle_test'
  root 'say#test'
end
