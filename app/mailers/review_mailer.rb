class ReviewMailer < ApplicationMailer
  default from: 'no-reply@kalinin.ru'
 
  def welcome_email(review)
    @review = review
    mail(to: 'prozaik81-2@yandex.ru', subject: 'New review create')
  end  
end
 