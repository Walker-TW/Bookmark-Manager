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

      connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'MakersAcademy');")
      connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.destroyallsoftware.com', 'Destroy');")
      connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.google.com', 'Google');")
      
      expect(Bookmark.all).to include "MakersAcademy"
      expect(Bookmark.all).to include "Destroy"
      expect(Bookmark.all).to include "Google"
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.yaytesting.com', title: 'YayTesting')

      expect(Bookmark.all).to include 'YayTesting'
    end
  end
end
