class Video < ApplicationRecord
  mount_uploader :video, VideoUploader
  mount_uploader :thumb, VideoUploader
  belongs_to :user
  has_many :video_views

  before_create :set_token

  def set_token
    self.token = SecureRandom.hex(10)
  end

  def views_count
    self.video_views.count
  end

  def video_url
    self.video.url.to_s
  end

  def thumb_url
    self.thumb.url.to_s
  end
end
