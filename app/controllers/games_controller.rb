class GamesController < ApplicationController
   before_action(:load_current_user, { :only => [:show] })

  def show
    the_code = params.fetch("code_id")
    @game = Game.where({:code => the_code }).at(0)
    @group = Group.where({:game_id => @game.id})
    @scores = Score.where({:game_id => @game.id})
    @completed_challenge = Challenge.where({:id => @scores.pluck(:challenge_id)})

    current = @scores.where({:game_id=>@game.id}).where({:current => true}).at(0)
    if current == nil
      @current_challenge = nil
    else
      @current_challenge = Challenge.where({:id => current.challenge_id}).at(0)
    end
    
    # @challenge = Challenge.where.not({:id => @scores.pluck(:challenge_id)})
    @challenge_number = Challenge.where({:id => @scores.pluck(:challenge_id) }).count
    
    render({ :template => "games/show.html.erb" })
  end

  def create
    @game = Game.new
    one = ('a'..'z').to_a.sample
    two = ('a'..'z').to_a.sample
    three = rand(10).to_s
    four = ('a'..'z').to_a.sample
    five = ('a'..'z').to_a.sample
    six = rand(10).to_s
    @game.code = one + two + three + four + five + six
    @game.save
    p @game.code

    username = params.fetch("query_username")
      if username == nil
        redirect_to("/", { :notice => "Enter username" })
      end

    @user = User.new
    @user.username = username
    @user.password = "password"
    @user.email = @user.username + rand(1000).to_s + rand(1000).to_s + "@random.com"

    if @user.valid?
      @game.save
      @user.save
      session.store(:user_id, @user.id)

      @group = Group.new
      @group.user_id = @user.id
      @group.game_id = @game.id
      @group.master = true
      @group.save

      redirect_to("/games/#{@game.code}", { :notice => "Game created successfully." })
      #render({ :template => "games/show.html.erb" })
    else
      redirect_to("/", { :notice => "Game failed to create successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    @game = Game.where({ :id => the_id }).at(0)

    @game.destroy

    redirect_to("/", { :notice => "Game deleted successfully."} )
  end
end
