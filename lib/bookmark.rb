require 'pg'

class Bookmark

  def self.connect_db
    if ENV['TEST_DB'] == 'test'
      @db = PG.connect(dbname: 'bookmark_manager_test')
    else
      @db = PG.connect(dbname: 'bookmark_manager')
    end
  end

  def self.all

    Bookmark.connect_db

    bookmarks_data = @db.exec('SELECT * FROM bookmarks;')

    # Use map so that an array is returned
    bookmarks_data.map { |bookmark| {url: bookmark['url'], title:bookmark['title']} }
  end

  def self.add_bookmark(url, title)
    Bookmark.connect_db

    @db.exec("INSERT INTO bookmarks VALUES(DEFAULT, '#{url}', '#{title}')")
  end
end
