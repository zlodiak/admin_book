class ReviewMailer < ApplicationMailer
  default from: 'no-reply@kalinin.ru'
 
  def welcome_email(review)
    @review = review
    #attachments['castle.jpg'] = File.read(@review.image.url(:thumb))
    attachments['castle.jpg'] = File.read(Rails.root.join('public/castle.jpg'))
    #attachments['review.jpg'].inline = File.read(Rails.root.join(@review.image.url(:thumb)))
    mail(to: 'prozaik81-2@yandex.ru', subject: 'New review create')
  end  
end
 


 
 
