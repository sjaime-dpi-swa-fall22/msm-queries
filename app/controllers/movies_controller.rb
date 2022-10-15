class MoviesController < ActionController::Base
  def index
    render({ :template => "movie_templates/index.html.erb"})
  end

  def movie_view
    @movie_id=params["movie_id"]
    render({ :template => "movie_templates/movie.html.erb"})
  end

end
