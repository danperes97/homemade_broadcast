require 'rails_helper'

RSpec.describe VideoView do
  context 'create a video view based on user and viewer' do
    let(:user) { create(:user) }
    let(:video) { create(:video, user: user) }
    let(:viewer) { create(:viewer) }
    let(:video_view) { build(:video_view, :logged_view, video: video, user: user) }

    it 'with success' do
      video_view_otps = Factories::VideoView.build(video, user, viewer)

      expect(video_view_otps.user_id).to eq(video_view.user_id)
      expect(video_view_otps.video_id).to eq(video_view.video_id)
    end

    it 'with failure' do
      expect { Factories::VideoView.build(video, nil, nil) }.to raise_error
    end
  end
end
