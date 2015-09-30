require 'rails_helper'

describe Review, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:review)).to be_valid
  end

  describe 'associations' do
   it "belongs_to user" do
      should belong_to(:user)
   end  
  end    

  describe 'name' do
    context "invalid" do  
      it "is invalid without name" do
        expect(FactoryGirl.build(:review, name: nil)).not_to be_valid
      end  

      it "is invalid with short name" do
        expect(FactoryGirl.build(:review, name: 'q')).not_to be_valid
      end      
    end      

    context "valid" do  
      it "is valid with duplicate name" do
        FactoryGirl.create(:review, name: 'qwerty')
        expect(FactoryGirl.build(:review, name: 'qwerty')).to be_valid
      end 
    end 
  end   

  describe 'image' do
    context "valid" do
      it "is valid when image is empty" do
        expect(FactoryGirl.build(:review, 
          image_file_name: nil
        )).to be_valid
      end     

      it "is valid when image content_type is: image/*" do
        expect(FactoryGirl.build(:review, 
          image_content_type: 'image/png'
        )).to be_valid
      end 
    end

    context "invalid" do  
      it "is invalid when image content_type is not: image/*" do
        expect(FactoryGirl.build(:review, 
          image_content_type: 'video/png'
        )).not_to be_valid
      end         
    end     
  end     
end
