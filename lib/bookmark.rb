class Bookmark
  attr_reader :bookmarks
  def initialize(bookmarks = [])
    @bookmarks = bookmarks
  end

  def self.all
    ["https://www.google.com/"]
  end

end
