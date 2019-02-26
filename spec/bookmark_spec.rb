require 'bookmark'
require 'pg'

describe Bookmark do
  describe '.all' do
    # xit 'returns all Bookmarks' do
    #   bookmarks = Bookmark.all
      
    #   expect(bookmarks).to include("http://www.makersacademy.com")
    #   expect(bookmarks).to include("http://www.google.com")
    #   expect(bookmarks).to include("http://www.destroyallsoftware.com")
    # end

    it 'connects to database called "bookmark_manager"' do
      expect(PG.connect(dbname:'bookmark_manager')).to be_instance_of(PG::Connection)
    end

    it 'retrieve all bookmark records from the bookmarks table' do
      bookmarks = Bookmark.all
      
      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
    end

  end
end
