class ScoresController < ApplicationController
  def index
    @scores = Score.all.order({ :created_at => :desc })

    render({ :template => "scores/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @score = Score.where({:id => the_id }).at(0)

    render({ :template => "scores/show.html.erb" })
  end

  def create
      game_id = params.fetch("query_game_id")
      game_code = Game.where({:id=>game_id}).at(0).code
      @group = Group.where({:game_id => game_id})

      @group.each do |group|
        @score = Score.new
        user = User.where({:id => group.user_id}).at(0)
        @score.game_id = game_id
        @score.challenge_id = params.fetch("query_challenge_id")
        @score.user_id = params.fetch(user.email)
        @score.score = params.fetch(user.id.to_s)
        @score.save
      end

      redirect_to("/games/#{game_code}", { :notice => "Score added successfully."})
  end

  def update
      game_id = params.fetch("query_game_id")
      game_code = Game.where({:id=>game_id}).at(0).code
      challenge_id = params.fetch("query_challenge_id")
      @group = Group.where({:game_id => game_id})

      @group.each do |group|
        user = User.where({:id => group.user_id}).at(0)
        @scores = Score.where({:user_id =>user.id}).where({:game_id => game_id}).where({:challenge_id => challenge_id}).at(0)
        @scores.score = params.fetch(user.id.to_s)
        @scores.save
      end

      redirect_to("/games/#{game_code}", { :notice => "Score updated successfully."} )
  end

  def destroy
    the_id = params.fetch("path_id")
    @score = Score.where({ :id => the_id }).at(0)

    @score.destroy

    redirect_to("/scores", { :notice => "Score deleted successfully."} )
  end
end
