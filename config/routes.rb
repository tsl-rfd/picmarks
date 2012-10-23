Picmarks::Application.routes.draw do
  
  get '/pictures', :controller => 'pictures', :action => 'index'
  post '/pictures', :controller => 'pictures', :action => 'create'
  delete '/pictures/:id', :controller => 'pictures', :action => 'destroy'
  
  get '/pictures/new', :controller => 'pictures', :action => 'new'
  
  get '/pictures/:id', :controller => 'pictures', :action => 'show'
  
end