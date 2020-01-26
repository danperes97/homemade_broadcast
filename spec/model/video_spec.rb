RSpec.describe Video, :model do
  let(:user) { create(:user) }
  let(:video) { create(:video, user: user) }

  context 'count number of views with video view created' do
    let!(:video_view) { create(:video_view, video: video, user: user) }

    it 'count 1 view' do
      expect(video.views_count).to eq(1)
    end
  end

  context 'count number of views without video view created' do
    it 'count 0 views' do
      expect(video.views_count).to eq(0)
    end
  end
end
