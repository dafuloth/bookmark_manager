require 'pg'

class Bookmark

  attr_reader :id, :title, :url

  def initialize(id:, title:, url:)
    @id = id

    # p @id

    @title = title

    # p @title

    @url = url

    # p @url
  end

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
    bookmarks_data.map { |bookmark| {url: bookmark['url'], title:bookmark['title'], id:bookmark['id']} }
  end

  def self.add_bookmark(url, title)
    Bookmark.connect_db

    @db.exec("INSERT INTO bookmarks VALUES(DEFAULT, '#{url}', '#{title}')")
  end
end
