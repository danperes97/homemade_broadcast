FactoryBot.define do
  factory :video do
    title { Faker::Music.band }
    video { Faker::Internet.url }
    thumb { Faker::Internet.url }
    views { rand(100) }
    token { Faker::Internet.uuid }
    user

    trait :with_categories do
      categories { create_list(:category, 2)  }
    end
  end
end
