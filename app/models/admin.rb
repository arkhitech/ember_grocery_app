class Admin < ActiveRecord::Base
  
  validates :username, presence:true, uniqueness:true, length: {minimum: 5, maximum: 15}
  validates :password, presence:true, length: {minimum: 6, maximum: 20}
  validates :email, presence:true, uniqueness:true, length: {minimum: 15, maximum: 35}

  def self.authenticate(email="", password="")
    user = Admin.find_by_email_and_password(email, password)

    if user
      return user    
  
    else
      return false
    
    end
  
  end
end
