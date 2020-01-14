class Video < ApplicationRecord
  mount_uploader :video, VideoUploader
  mount_uploader :thumb, VideoUploader
end
