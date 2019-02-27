require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'retrieve all bookmark records from the bookmarks table' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
    end
  end
end
