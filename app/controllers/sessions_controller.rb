class SessionsController < ApplicationController
  helper_method :log_in
  def new
  end

  def create
  	user = User.find_by(username: params[:sessions][:username].downcase)
  	if user && user.authenticate(params[:sessions][:password])
      log_in user
      redirect_to user
  	else
  		flash.now[:danger] = "Invalid password username"
  		render 'new'
  	end
  end

  def destroy
  end

end
