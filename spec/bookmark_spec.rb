require './lib/bookmark.rb'

describe Bookmark do

  describe "#init" do
    it 'returns an array to hold bookmarks on creation' do
      expect(subject.bookmarks).to eq []
    end
  end

  describe '.all' do
    it 'returns a list of all the bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
      
      expect(Bookmark.all).to include "http://www.google.com"
      expect(Bookmark.all).to include "http://www.destroyallsoftware.com"
      expect(Bookmark.all).to include "http://www.makersacademy.com"
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.yaytesting.com')

      expect(Bookmark.all).to include 'http://www.yaytesting.com'
    end
  end
end
