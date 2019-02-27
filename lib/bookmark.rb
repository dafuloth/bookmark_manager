require 'pg'

class Bookmark
  def self.all
    db = PG.connect(dbname: 'bookmark_manager')
    bookmarks_data = db.exec('SELECT * FROM bookmarks;')

    # Use map so that an array is returned
    bookmarks_data.map { |bookmark| bookmark['url'] }
  end
end
