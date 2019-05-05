Rails.application.routes.draw do

    # api/categories
    scope :api do
        resources :categories
        post 'authenticate', to: 'authentication#authenticate'
    end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
