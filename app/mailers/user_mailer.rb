class UserMailer < ActionMailer::Base
 default from: 'notifications@example.com'
 
  def welcome_email(params)
    @purchased_stocks = params[:purchased_stocks].values
    @name = params[:name]
    @email = params[:email]
    @address = params[:address]
    @phone = params[:phone]
    @date = params[:date]
    @time = params[:time]  
  
    @admin = Admin.all
    @admin.each do |admin|
      mail(to: admin.email, subject: 'User Order')      
    end
  end
end