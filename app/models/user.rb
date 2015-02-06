class User < ActiveRecord::Base
  # Remember to create a migration!
    has_many :albums


   def self.authenticate(validate = {})

     account =  User.find_by_email(validate[:email])
     if account.nil? == false && account.password == validate[:password]
       return account
     else
      return nil
     end

   end

end
