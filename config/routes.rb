Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "misc", :action => "directors" })
  get("/directors/youngest", { :controller => "misc", :action => "youngest" })
  get("/directors/eldest", { :controller => "misc", :action => "oldest" })
  get("/directors/:id", { :controller => "misc", :action => "director" })
  get("/movies", { :controller => "misc", :action => "movies" })
  get("/actors", { :controller => "misc", :action => "actors" })
  get("/actors/:id", { :controller => "misc", :action => "actor" })
end
