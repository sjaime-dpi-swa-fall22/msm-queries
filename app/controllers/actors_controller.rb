class ActorsController < ActionController::Base
  def index
    render({ :template => "actor_templates/index.html.erb"})
  end

  def actor_view
    @actor_id=params["actor_id"]
    @actor=Actor.where({:id => @actor_id})[0]
    render({ :template => "actor_templates/actor.html.erb"})
  end

end
