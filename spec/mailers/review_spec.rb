require 'rails_helper'

RSpec.describe Review, type: :model do
  review = FactoryGirl.create(:review)

  it "sends an email after create new review" do
    expect { ReviewMailer.welcome_email(@review).deliver_later }.to change { ActionMailer::Base.deliveries.count }.by(1)
  end  
end
