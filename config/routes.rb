Rails.application.routes.draw do
  # Routes for the My_favorite resource:
  # CREATE
  get "/my_favorites/new", :controller => "my_favorites", :action => "new"
  post "/create_my_favorite", :controller => "my_favorites", :action => "create"

  # READ
  get "/my_favorites", :controller => "my_favorites", :action => "index"
  get "/my_favorites/:id", :controller => "my_favorites", :action => "show"

  # UPDATE
  get "/my_favorites/:id/edit", :controller => "my_favorites", :action => "edit"
  post "/update_my_favorite/:id", :controller => "my_favorites", :action => "update"

  # DELETE
  get "/delete_my_favorite/:id", :controller => "my_favorites", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
