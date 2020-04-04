class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.all.order({ :created_at => :desc })

    render({ :template => "challenges/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @challenge = Challenge.where({:id => the_id }).at(0)

    render({ :template => "challenges/show.html.erb" })
  end

  def create
    @challenge = Challenge.new
    @challenge.name = params.fetch("query_name")
    @challenge.description = params.fetch("query_description")
    @challenge.scoring = params.fetch("query_scoring")

    if @challenge.valid?
      @challenge.save
      redirect_to("/challenges", { :notice => "Challenge created successfully." })
    else
      redirect_to("/challenges", { :notice => "Challenge failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    @challenge = Challenge.where({ :id => the_id }).at(0)

    @challenge.name = params.fetch("query_name")
    @challenge.description = params.fetch("query_description")
    @challenge.scoring = params.fetch("query_scoring")

    if @challenge.valid?
      @challenge.save
      redirect_to("/challenges/#{@challenge.id}", { :notice => "Challenge updated successfully."} )
    else
      redirect_to("/challenges/#{@challenge.id}", { :alert => "Challenge failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    @challenge = Challenge.where({ :id => the_id }).at(0)

    @challenge.destroy

    redirect_to("/challenges", { :notice => "Challenge deleted successfully."} )
  end

  def start 
    current_challenge = Challenge.all.sample
    game_id = params.fetch("query_game_id")
    game_code = Game.where({:id=> game_id}).at(0).code
    @group = Group.where({:game_id => game_id})

      @group.each do |group|
        @score = Score.new
        user = User.where({:id => group.user_id}).at(0)
        @score.game_id = game_id
        @score.challenge_id = current_challenge.id
        @score.user_id = params.fetch(user.email)
        @score.score = 0
        @score.current = true
        @score.save
      end

    redirect_to("/games/#{game_code}")
  end

  def next
    the_game_id = params.fetch("query_game_id")
    game_code = Game.where({:id=> the_game_id}).at(0).code
    current_challenge_id = params.fetch("query_challenge_id")
    @group = Group.where({:game_id => the_game_id})
    @scores = Score.where({:game_id => the_game_id})

    @scores.each do |score|
      p "HELLO BOO"
      p score.current
      if score.current == true
        score.current = false
        score.save
        p "THATS RIGHT B"
        p score.current
      end
    end

    remaining_challenges = Challenge.where.not({:id => @scores.pluck(:challenge_id)})
    next_challenge = remaining_challenges.all.sample

    @group.each do |group|
      @score = Score.new
      user = User.where({:id => group.user_id}).at(0)
      @score.game_id = the_game_id
      @score.challenge_id = next_challenge.id
      @score.user_id = params.fetch(user.email)
      @score.score = 0
      @score.current = true
      @score.save
    end

    redirect_to("/games/#{game_code}")
  end


end
