class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: 'superadmin@ad.ad', subject: 'New user create. Новый пользователь создан')
  end  
end
