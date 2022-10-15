Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  #action "index" action is Ruby precedent for a page that lists things
  #Ruby precedent is to use controller name that matches the table you are interfacing with
  get("/directors", { :controller => "directors", :action => "index" }) 
  get("/directors/:director_type", { :controller => "directors", :action => "director_view" })

  get("/movies", { :controller => "movies", :action => "index" }) 
  get("/movies/:movie_id", { :controller => "movies", :action => "movie_view" })
end
