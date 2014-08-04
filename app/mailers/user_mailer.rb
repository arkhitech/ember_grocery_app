class UserMailer < ActionMailer::Base
 default from: 'notifications@example.com'
 
  def welcome_email(info)
    @info = info
    @admin = Admin.all
    @admin.each do |admin|
      mail(to: admin.email, subject: 'User Order')      
    end
  end
end