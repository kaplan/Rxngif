Rxngif::Application.routes.draw do

  get "/pictures", :controller => "Pictures", :action => "index"
  get "/pictures/new", :controller => "Pictures", :action => "new"
  get "/pictures/:id", :controller => "Pictures", :action => "show"

end
