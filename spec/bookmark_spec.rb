require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'retrieve all bookmark records from the bookmarks table' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include(id: "1", title: 'Makers Academy', url: 'http://www.makersacademy.com')
      expect(bookmarks).to include(id: "2", title: 'Destroy All Software', url: 'http://www.destroyallsoftware.com')
      expect(bookmarks).to include(id: "3", title: 'Google', url: 'http://www.google.com')
      expect(bookmarks).to include(id: "4", title: 'dafuloth.me', url: 'https://dafuloth.me')
    end
  end

  describe '.add_bookmark' do
    it 'adds a bookmark' do
      Bookmark.add_bookmark('http://www.twitch.tv', 'Twitch')

      expect(Bookmark.all).to include(id: "5", title: 'Twitch', url: 'http://www.twitch.tv')
    end
  end
end
