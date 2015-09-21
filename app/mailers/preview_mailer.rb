class PreviewMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def welcome_email(preview)
    p '========================'
    @preview = preview
    @url  = 'http://example.com/login'
    mail(to: 'prozaik81-2@yandex.ru', subject: 'New preview create. Новый preview создан')
  end  
end
