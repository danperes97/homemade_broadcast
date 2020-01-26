RSpec.describe VideosWatchService do
  context 'increase video views' do
    let(:user) { create(:user) }
    let(:video) { create(:video, user: user) }
    let(:viewer) { create(:viewer) }

    it 'with success' do
      expect(video.video_views.count).to eq(0)
      VideosWatchService.increase_view!(video, user, viewer)
      expect(video.video_views.count).to eq(1)
    end
  end
end
