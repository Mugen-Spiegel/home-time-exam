Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :v1 do
    scope '/service', controller: :service do
      post :reservation
    end
  end

end
