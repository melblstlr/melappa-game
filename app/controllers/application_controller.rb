class ApplicationController < ActionController::Base
  #before_action(:load_current_user)
  
  #before_action(:force_user_sign_in)
  
  def load_current_user
    the_id = session.fetch(:user_id)
    @current_user = User.where({ :id => the_id }).at(0)
  end
  
  def force_user_sign_in
    if @current_user == nil
      redirect_to("/user_sign_in", { :notice => "You have to sign in first." })
    end
  end

  def homepage
    render({:template => "index.html.erb"})
  end

  def manage
    @challenge = Challenge.all
    @score = Score.all
    @user = User.all
    @group = Group.all
    @game = Game.all
    render({:template => "manage_data.html.erb"})
  end

  def clear
    Score.delete_all
    User.delete_all
    Group.delete_all
    Game.delete_all
    redirect_to("/manage_data")
  end
  
end
