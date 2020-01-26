require 'rails_helper'

RSpec.describe VideosWatchService do
  let(:user) { create(:user) }

  context 'increase video views' do
    let(:video) { create(:video, user: user) }
    let(:viewer) { create(:viewer) }

    it 'with success' do
      expect(video.video_views.count).to eq(0)
      VideosWatchService.increase_view!(video, user, viewer)
      expect(video.video_views.count).to eq(1)
    end
  end

  context 'recommended videos' do
    let!(:video) { create(:video, user: user) }

    it 'recommend all videos' do
      expect(VideosWatchService.recommended_videos_for(user)).to eq(Video.all)
    end
  end
end
