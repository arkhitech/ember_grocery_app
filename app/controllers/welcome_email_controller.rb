class WelcomeEmailController < ApplicationController

  def create
    #info = params[:info]
    UserMailer.welcome_email(params).deliver
    render nothing: true
  end
end