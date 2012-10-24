Picmarks::Application.routes.draw do
  
  get  '/pictures',     :controller => 'Pictures', :action => 'index'
  post '/pictures',     :controller => 'Pictures', :action => 'create'
  get  '/pictures/new', :controller => 'Pictures', :action => 'new'  
  
  get    '/pictures/:id',      :controller => 'Pictures', :action => 'show'
  delete '/pictures/:id',      :controller => 'Pictures', :action => 'destroy'
  put    '/pictures/:id',      :controller => 'Pictures', :action => 'update'
  get    '/pictures/:id/edit', :controller => 'Pictures', :action => 'edit'
  
end