class WelcomeEmailController < ApplicationController

  def create
    info = params[:info]
    UserMailer.welcome_email(info).deliver
  end
end