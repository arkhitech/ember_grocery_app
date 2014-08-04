class HomesController < ApplicationController
  def login
  end
  
 def login_attempt
   authorized_user = Admin.authenticate(params[:admin_login][:email],params[:admin_login][:password])
    if authorized_user
      flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.username}"
      redirect_to :controller => 'stocks', :action => 'index'

   else
      flash[:notice] = "Invalid Username or Password" 
      flash[:color]= "invalid"
      render "login"
    end
  end
end 