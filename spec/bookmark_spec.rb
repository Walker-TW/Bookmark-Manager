require './lib/bookmark.rb'

describe Bookmark do

  describe "#init" do
    it 'returns an array to hold bookmarks on creation' do
      expect(subject.bookmarks).to eq []
    end
  end

  describe '.self' do
    it 'returns an array of all the bookmarks' do
      expect(Bookmark.all).to eq ["https://www.google.com/"]
    end
  end
end
