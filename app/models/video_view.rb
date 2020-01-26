class VideoView < ApplicationRecord
  belongs_to :user
  belongs_to :viewer
  belongs_to :video
end
