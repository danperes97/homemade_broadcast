class Video < ApplicationRecord
  mount_uploader :video, VideoUploader
  mount_uploader :thumb, VideoUploader
  belongs_to :user
  has_many :video_views

  before_create :set_token

  def set_token
    self.token = SecureRandom.hex(10)
  end
end
