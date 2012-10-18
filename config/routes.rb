Picmarks::Application.routes.draw do
  
  get '/pictures', :controller => 'pictures', :action => 'index'
  
  get '/pictures/new', :controller => 'pictures', :action => 'new'
  
  get '/pictures/:id', :controller => 'pictures', :action => 'show'
  
end