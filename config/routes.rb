Picmarks::Application.routes.draw do
  
  get  '/pictures' => 'Pictures#index', :as => 'pictures'
  
  post '/pictures', :controller => 'Pictures', :action => 'create'
  
  get  '/pictures/new' => 'pictures#new', :as => 'new_picture'  
  get  '/pictures/:id' => 'pictures#show', :as => 'picture'
  
  
    
  delete '/pictures/:id',      :controller => 'Pictures', :action => 'destroy'
  put    '/pictures/:id',      :controller => 'Pictures', :action => 'update'

  get    '/pictures/:id/edit' => 'pictures#edit', :as => 'edit_picture'
  
end