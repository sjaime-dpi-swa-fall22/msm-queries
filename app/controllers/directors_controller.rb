class DirectorsController < ActionController::Base
  def index
    render({ :template => "director_templates/index.html.erb"})
  end
end
