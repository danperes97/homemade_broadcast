require 'rails_helper'

RSpec.describe VideosSearchService do
  let(:user) { create(:user) }
  let(:video) { create(:video, :with_categories, user: user) }

  context 'search by category' do

    it 'with success' do
      expect(VideosSearchService.search(category: video.categories.first.tag_name)).to include(video)
    end

    it 'not found' do
      expect(VideosSearchService.search(category: "RandomCategory")).to_not include(video)
    end
  end

  context 'search by query' do
    it 'with success' do
      expect(VideosSearchService.search(query: video.title)).to include(video)
    end

    it 'not found' do
      expect(VideosSearchService.search(query: "RandomQuery")).to_not include(video)
    end
  end
end
