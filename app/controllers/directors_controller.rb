class DirectorsController < ActionController::Base
  def index
    render({ :template => "director_templates/index.html.erb"})
  end

  def director_view
    @director_type=params["director_type"]
    @director = Director.new
    
    if (@director_type=="eldest")
      max_dob = Director.maximum(:dob)
      @director = Director.where({:dob => max_dob})[0]
      render({ :template => "director_templates/director_age.html.erb"})
    elsif (@director_type=="youngest")
      min_dob = Director.minimum(:dob)
      @director = Director.where({:dob => min_dob})[0]
      render({ :template => "director_templates/director_age.html.erb"})
    else
      render({ :template => "director_templates/director.html.erb"})
    end
  end

end
