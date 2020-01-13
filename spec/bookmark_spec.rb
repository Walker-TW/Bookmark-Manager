require './lib/bookmark.rb'

describe Bookmark do

  describe "#init" do
    it 'returns an array to hold bookmarks on creation' do
      expect(subject.bookmarks).to eq []
    end
  end
end
