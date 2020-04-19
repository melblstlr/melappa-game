Rails.application.routes.draw do


  #homepage
  get("/", {:controller => "application", :action => "homepage"})


  # Routes for the Group resource:

  # CREATE
  post("/insert_group", { :controller => "groups", :action => "create" })
          
  # READ
  get("/groups", { :controller => "groups", :action => "index" })
  
  get("/groups/:path_id", { :controller => "groups", :action => "show" })
  
  # UPDATE
  
  post("/modify_group/:path_id", { :controller => "groups", :action => "update" })
  
  # DELETE
  get("/delete_group/:path_id", { :controller => "groups", :action => "destroy" })

  #------------------------------
 
  # Routes for the Challenge resource:

  # CREATE
  post("/insert_challenge", { :controller => "challenges", :action => "create" })
          
  # READ
  get("/challenges", { :controller => "challenges", :action => "index" })
  get("/challenges/:game_code", { :controller => "challenges", :action => "index" })
  post("/start_challenge", {:controller => "challenges", :action => "start"}) 
  post("/next_challenge", {:controller => "challenges", :action => "next"})
  post("/pick_challenge", {:controller => "challenges", :action => "pick"})


  # UPDATE
  
  post("/modify_challenge/:path_id", { :controller => "challenges", :action => "update" })
  
  # DELETE
  get("/delete_challenge/:path_id", { :controller => "challenges", :action => "destroy" })

  #------------------------------

  # Routes for the Score resource:

  # CREATE
  post("/insert_score", { :controller => "scores", :action => "create" })
          
  # READ
  get("/scores", { :controller => "scores", :action => "index" })
  
  get("/scores/:path_id", { :controller => "scores", :action => "show" })
  
  # UPDATE
  
  post("/modify_score", { :controller => "scores", :action => "update" })
  
  # DELETE
  get("/delete_score/:path_id", { :controller => "scores", :action => "destroy" })

  #------------------------------

  # Routes for the Game resource:

  # CREATE
  post("/insert_game", { :controller => "games", :action => "create" })
          
  # READ
  get("/games", { :controller => "games", :action => "index" })
  
  get("/games/:code_id", { :controller => "games", :action => "show" })
  
  # UPDATE
  
  post("/modify_game/:path_id", { :controller => "games", :action => "update" })
  
  # DELETE
  get("/delete_game/:path_id", { :controller => "games", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "users", :action => "new_registration_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "users", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "users", :action => "edit_registration_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "users", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "users", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_sessions", :action => "new_session_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_sessions", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_sessions", :action => "destroy_cookies" })
             
  #------------------------------

  # ======= Add Your Routes Above These =============
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
