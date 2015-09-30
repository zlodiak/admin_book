require 'rails_helper'

RSpec.describe "reviews/index", type: :view do
  before(:each) do
    assign(:reviews, [FactoryGirl.create(:review)])
  end

  it "renders a list of reviews" do
    #render
  end
end
