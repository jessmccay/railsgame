class UsersController < ApplicationController
  def index
  end

  def register
    # TODO: Create user in database with user_name
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    if @user.save
     # TODO: Store user (ID) in session
     cookies[:user_id] = @user.id
     # TODO: Change this to redirect to game
     redirect_to '/games/play' #update the render to be redirect to the play view
    else
     render 'register' #update the render text to render the registration page.
    end
  end
end
