class VideosWatchService
  def self.increase_view!(video, user, viewer)
    begin
      Factories::VideoView.build(video, user, viewer).save
    rescue
    end
  end

  def self.recommended_videos_for(user)
    Video.all
  end
end
