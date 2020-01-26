class VideoView < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :viewer, required: false
  belongs_to :video
end
