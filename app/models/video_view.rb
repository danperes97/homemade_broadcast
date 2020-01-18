class VideoView < ApplicationRecord
  has_one :user
  has_one :viewer
  belongs_to :video
end
