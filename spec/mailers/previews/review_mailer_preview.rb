# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class ReviewMailerPreview < ActionMailer::Preview
  def welcome_email
    ReviewMailer.welcome_email(Preview.first)
  end
end
