Rails.application.routes.draw do
  resources :restaurants, except: [:destroy, :edit, :update] do
    # member do
    #   get 'reviews', to: "restaurants#reviews"
    #   # www.site.com/restaurants/14/reviews
    #   # restaurants controller,
    #   # action reviews
    # end
    # resources :reviews, only: []
    # www.ste.com/restaurans/14/reviews
    # reviews controller,
    # action index
    resources :reviews, only: [:index, :new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
