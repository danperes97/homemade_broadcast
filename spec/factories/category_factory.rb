FactoryBot.define do
  factory :category do
    tag_name { Faker::Color.color_name }
  end
end
