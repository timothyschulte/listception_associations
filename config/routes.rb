Rails.application.routes.draw do
  # Routes for the Board resource:
  # CREATE
  get "/boards/new", :controller => "boards", :action => "new"
  post "/create_board", :controller => "boards", :action => "create"

  # READ
  get "/boards", :controller => "boards", :action => "index"
  get "/boards/:id", :controller => "boards", :action => "show"

  # UPDATE
  get "/boards/:id/edit", :controller => "boards", :action => "edit"
  post "/update_board/:id", :controller => "boards", :action => "update"

  # DELETE
  get "/delete_board/:id", :controller => "boards", :action => "destroy"
  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
