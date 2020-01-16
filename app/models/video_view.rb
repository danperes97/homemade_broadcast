class VideoView < ApplicationRecord
  has_one :user
  belongs_to :video
end
