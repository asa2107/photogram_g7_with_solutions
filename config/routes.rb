Rails.application.routes.draw do

get("/photos/new", { :controller => "pictures", :action => "new_form" })
get("/create_photo", { :controller => "pictures", :action => "create_row" })

# READ
get("/photos", { :controller => "pictures", :action => "index" })
get("/photos/:the_id", { :controller => "pictures", :action => "show" })

# UPDATE
get("/photos/:la_id/edit", { :controller => "pictures", :action => "edit_form" })
get("/update_photo/:le_id", { :controller => "pictures", :action => "update_row" })

# DELETE
get("/delete_photo/:da_id", { :controller => "pictures", :action => "destroy_row" })
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
