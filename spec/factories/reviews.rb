FactoryGirl.define do
  factory :review do
    name Faker::Name.name   
    email Faker::Internet.email
    message Faker::Lorem.paragraph(7)    
    image_file_size Faker::Number.number(4)    
    image_file_name Faker::Lorem.characters(7) + '.jpg'
    image_content_type 'image/jpeg'
  end

end
