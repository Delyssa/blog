FactoryGirl.define do
  factory :article do
    title { Faker::Book.title }
    text { Faker::Lorem.sentence }
    user
  end
end
