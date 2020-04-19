class GroupsController < ApplicationController

  def create
    @game =  Game.where({:code => params.fetch("query_game_code")}).at(0)
    p "GAME ID ORIGINAL"
    p @game.id 
    username = params.fetch("query_username")
    if username == nil
      redirect_to("/", { :notice => "Enter username" })
    end

    @user = User.new 
    @user.username = username
    @user.password = "password"
    @user.email = @user.username + rand(1000).to_s + rand(1000).to_s + "@random.com"

    if @user.valid?
      @user.save
      session.store(:user_id, @user.id)
   
      @group = Group.new
      @group.game_id = @game.id
      @group.user_id = @user.id
      @group.master = false
      @group.save


      redirect_to("/games/#{@game.code}", { :notice => "Game joined successfully." })
      #render({ :template => "games/show.html.erb" })
    else
      redirect_to("/", { :notice => "Failed to join game successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    @group = Group.where({ :id => the_id }).at(0)

    @group.destroy

    redirect_to("/groups", { :notice => "Group deleted successfully."} )
  end
end
