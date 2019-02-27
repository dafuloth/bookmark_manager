require 'pg'

class Bookmark
  def self.all
    
    if ENV['TEST_DB'] == 'test'
      db = PG.connect(dbname: 'bookmark_manager_test')
    else
      db = PG.connect(dbname: 'bookmark_manager')
    end

    bookmarks_data = db.exec('SELECT * FROM bookmarks;')

    # Use map so that an array is returned
    bookmarks_data.map { |bookmark| bookmark['url'] }
  end
end
