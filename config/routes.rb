Rottenpotatoes::Application.routes.draw do
  
  resources :movies
    # root :to => redirect('/movies')
    get 'movies/:id/director' ,to: 'movies#same_director',:as =>  'same_director'
  
  resources :movies do
    resources :similar, :controller=> 'movies', :action => 'same_director', :only => [:index]
  end
  
  #root 'movies#index'
 # resources :movies
   #map '/' to be a redirect to '/movies'
   get '/' => 'movies#index'
  root :to => redirect('/movies')
  
end
