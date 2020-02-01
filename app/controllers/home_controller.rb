class HomeController < ApplicationController
  def index
    @videos = VideosWatchService.recommended_videos_for(current_user)
    @video_categories = Category.all
  end
end
