Rails.application.routes.draw do
  get "/", :controller => "boards", :action => "index"

  # Routes for the Tagging resource:
  # CREATE
  get "/taggings/new", :controller => "taggings", :action => "new"
  post "/create_tagging", :controller => "taggings", :action => "create"

  # READ
  get "/taggings", :controller => "taggings", :action => "index"
  get "/taggings/:id", :controller => "taggings", :action => "show"

  # UPDATE
  get "/taggings/:id/edit", :controller => "taggings", :action => "edit"
  post "/update_tagging/:id", :controller => "taggings", :action => "update"

  # DELETE
  get "/delete_tagging/:id", :controller => "taggings", :action => "destroy"
  #------------------------------

  # Routes for the Tag resource:
  # CREATE
  get "/tags/new", :controller => "tags", :action => "new"
  post "/create_tag", :controller => "tags", :action => "create"

  # READ
  get "/tags", :controller => "tags", :action => "index"
  get "/tags/:id", :controller => "tags", :action => "show"

  # UPDATE
  get "/tags/:id/edit", :controller => "tags", :action => "edit"
  post "/update_tag/:id", :controller => "tags", :action => "update"

  # DELETE
  get "/delete_tag/:id", :controller => "tags", :action => "destroy"
  #------------------------------

  # Routes for the Note resource:
  # CREATE
  get "/notes/new", :controller => "notes", :action => "new"
  post "/create_note", :controller => "notes", :action => "create"

  # READ
  get "/notes", :controller => "notes", :action => "index"
  get "/notes/:id", :controller => "notes", :action => "show"

  # UPDATE
  get "/notes/:id/edit", :controller => "notes", :action => "edit"
  post "/update_note/:id", :controller => "notes", :action => "update"

  # DELETE
  get "/delete_note/:id", :controller => "notes", :action => "destroy"
  #------------------------------

  # Routes for the Card resource:
  # CREATE
  get "/cards/new", :controller => "cards", :action => "new"
  post "/create_card", :controller => "cards", :action => "create"

  # READ
  get "/cards", :controller => "cards", :action => "index"
  get "/cards/:id", :controller => "cards", :action => "show"

  # UPDATE
  get "/cards/:id/edit", :controller => "cards", :action => "edit"
  post "/update_card/:id", :controller => "cards", :action => "update"

  # DELETE
  get "/delete_card/:id", :controller => "cards", :action => "destroy"
  #------------------------------

  # Routes for the List resource:
  # CREATE
  get "/lists/new", :controller => "lists", :action => "new"
  post "/create_list", :controller => "lists", :action => "create"

  # READ
  get "/lists", :controller => "lists", :action => "index"
  get "/lists/:id", :controller => "lists", :action => "show"

  # UPDATE
  get "/lists/:id/edit", :controller => "lists", :action => "edit"
  post "/update_list/:id", :controller => "lists", :action => "update"

  # DELETE
  get "/delete_list/:id", :controller => "lists", :action => "destroy"
  #------------------------------

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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount WebGit::Engine, at: "/rails/git"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
