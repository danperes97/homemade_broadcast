class HomeController < ApplicationController
  def index
    @videos = VideosWatchService.recommended_videos_for(current_user)
  end
end
