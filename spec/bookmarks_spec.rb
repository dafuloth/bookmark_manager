require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all Bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makers.tech")
      expect(bookmarks).to include("http://www.github.com")
      expect(bookmarks).to include("http://www.youtube.com")
    end
  end
end
