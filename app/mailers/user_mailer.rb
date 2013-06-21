class UserMailer < ActionMailer::Base
  default :from => "averageazn1337@gmail.com"
  
  def registration_confirmation(user)
    @user = user

    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registration")
  end
  
  def event(user,event)
    @user=user
    @event= event
     mail(:to => "#{user.name} <#{user.email}>", :subject => event.name+"reminder" )
  end
end
