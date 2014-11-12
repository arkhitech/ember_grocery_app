class HomesController < ApplicationController
  def login
  end
  
 def login_attempt
   authorized_user = Admin.authenticate(params[:admin_login][:email],params[:admin_login][:password])
    if authorized_user
     redirect_to :controller => 'stocks', :action => 'admin'

   else
      flash[:notice] = "Invalid Username or Password" 
      flash[:color]= "invalid"
      render "login"
    end
  end
end 