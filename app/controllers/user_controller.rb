class UserController < ApplicationController
  
 

  def signup
  	#create an instance to create new users
  	@user = User.new
  end

#create methods will save the user created in signup
  def create 
  #create an instance to save the users passed by the form
  @user = User.new(user_params)
  if @user.save
  	#
    render 'show'
    #render show
  else 
render 'signup'
#puts "Helooooo"
  end
  end

   def show
    @user = User.find(params[:id])
  end

private 
def user_params
params.require(:user).permit(:username, :email, :password)
  end

end
