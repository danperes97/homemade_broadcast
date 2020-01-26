class HomeController < ApplicationController
  def index
    @videos = VideosWatchService.recomended_videos_for(current_user)
  end
end
