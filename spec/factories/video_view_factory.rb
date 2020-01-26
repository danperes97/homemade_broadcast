FactoryBot.define do
  factory :video_view do
    user
    video
    viewer

    trait :logged_view do
      viewer nil
    end

    trait :unlogged_view do
      user nil
    end
  end
end
