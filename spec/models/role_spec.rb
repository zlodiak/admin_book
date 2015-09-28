require 'rails_helper'

RSpec.describe Role, type: :model do
  describe "user with role admin" do  
    before(:each) do
      @user = FactoryGirl.create(:user, :admin)
      @ability = Ability.new(@user)
    end
  
    it "can show review" do
      expect(@ability).to be_able_to(:show, Review)
    end

    it "cannot delete review" do
      expect(@ability).to be_able_to(:delete, Review)
    end  
  end  

end
