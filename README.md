# Base Rails

#deploy to heroku
heroku login
git add -A
git commit -m "May 1: Challenge Management Update"
git push heroku HEAD:master -f

also useful:
heroku create my-cool-app
heroku rename my-awesome-app


{"adapter"=>"postgresql", "pool"=>5, "timeout"=>5000, "database"=>"dcdrcqg61jljbn",
"username"=>"rakqphoapbimtl", "password"=>"ceb5a5b3d4914f060fe74f598b25358c108ff57cc1fbe946f3ac9850260da493",
"port"=>5432, "host"=>"ec2-52-87-58-157.compute-1.amazonaws.com"}
=> nil

#upload a csv


## Standard Workflow

 1. Set up the project: `bin/setup`
 1. Start the web server by running `bin/server`.
 1. Navigate to your live application.
 1. As you work, remember to navigate to `/git` and **commit often as you work.**

#GAMES

#removed from controller

  def index
    @games = Game.all.order({ :created_at => :desc })

    render({ :template => "games/index.html.erb" })
  end

  def update
    the_id = params.fetch("path_id")
    @game = Game.where({ :id => the_id }).at(0)

    @game.code = params.fetch("query_code")

    if @game.valid?
      @game.save
      redirect_to("/games/#{@game.id}", { :notice => "Game updated successfully."} )
    else
      redirect_to("/games/#{@game.id}", { :alert => "Game failed to update successfully." })
    end
  end

#GROUPS

#removed from controller

  def update
    the_id = params.fetch("path_id")
    @group = Group.where({ :id => the_id }).at(0)

    @group.game_id = params.fetch("query_game_id")
    @group.user_id = params.fetch("query_user_id")

    if @group.valid?
      @group.save
      redirect_to("/groups/#{@group.id}", { :notice => "Group updated successfully."} )
    else
      redirect_to("/groups/#{@group.id}", { :alert => "Group failed to update successfully." })
    end
  end

  def index
    @groups = Group.all.order({ :created_at => :desc })

    render({ :template => "groups/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @group = Group.where({:id => the_id }).at(0)

    render({ :template => "groups/show.html.erb" })
  end
