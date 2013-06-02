# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    photo_file "MyString"
    gallery_id 1
    position 1
  end
end
