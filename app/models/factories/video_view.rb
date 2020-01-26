class Factories::VideoView
  def self.build(video, user, viewer)
    creation_options = if user.present?
      { video_id: video.id, user_id: user.id }
    else
      { video_id: video.id, viewer_id: viewer.id }
    end

    VideoView.new(creation_options)
  end
end
  
