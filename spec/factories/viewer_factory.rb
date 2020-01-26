FactoryBot.define do
  factory :viewer do
    token { Faker::Internet.uuid }
    ip { Faker::Internet.public_ip_v4_address }
  end
end
