require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'retrieve all bookmark records from the bookmarks table' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include(title: 'Makers Academy', url: 'http://www.makersacademy.com')
      expect(bookmarks).to include(title: 'Google', url: 'http://www.google.com')
      expect(bookmarks).to include(title: 'Destroy All Software', url: 'http://www.destroyallsoftware.com')
      expect(bookmarks).to include(title: 'thebestcoder', url: 'http://www.thebestcoder.co.uk')
    end
  end

  describe '.add_bookmark' do
    it 'adds a bookmark' do
      Bookmark.add_bookmark('http://www.twitch.tv', 'Twitch')

      expect(Bookmark.all).to include(title: 'Twitch', url: 'http://www.twitch.tv')
    end
  end
end
