require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'retrieve all bookmark records from the bookmarks table' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.davidisthebestcodereu.co.uk')
    end
  end

  describe '.add_bookmark' do
    it 'adds a bookmark' do
      Bookmark.add_bookmark('www.twitch.tv')

      expect(Bookmark.all).to include('www.twitch.tv')

    end
  end
end
