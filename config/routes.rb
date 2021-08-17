Rails.application.routes.draw do
  
  # to end up with here is something like /dog_houses/1/reviews for all of a dog
  # house's reviews and /dog_houses/1/reviews/5 to see an individual review for that dog house
  resources :dog_houses, only: [:show] do
    # nested resource for reviews
    resources :reviews, only: [:show, :index]
    # the nested resource is equivelant to this get message
    # get '/dog_houses/:dog_house_id/reviews', to: 'dog_houses#reviews_index'
    # get '/dog_houses/:dog_house_id/reviews/:id', to: 'dog_houses#review' 
  end

  resources :reviews, only: [:show, :index, :create]
  

end
