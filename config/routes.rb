Rails.application.routes.draw do
  devise_for :users

  post '/handle' => 'say#handle_test'
  root 'say#test'
end
