class UserMailer < ApplicationMailer
  default from: "aircnc@admin.com"

def welcome(user)
    @user = user
    @email = user.email

    mail( :to => @email, :subject => "Your aircnc booking is attached!", :cc => "samit.c.kalra@gmail.com" )
end


end
