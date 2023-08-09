Rails.application.routes.draw do
  root 'root#index'  # Assuming "root" is the controller name

  namespace :api do
    namespace :v1 do
      get '/greetings', to: 'greetings#index'
    end
  end
end
