require 'pg'

class Bookmark

  
  def self.all
    db = PG.connect(dbname:'bookmark_manager')
    bookmarks_data = db.exec('SELECT * FROM bookmarks;')

    bookmarks_data.map { |bookmark| bookmark["url"] }
  
    # bookmarks = Array.new
    # bookmarks_data.each { |bookmark| bookmarks << bookmark["url"] }

    # bookmarks
    # [
    #   "http://www.makers.tech",
    #   "http://www.github.com",
    #   "http://www.youtube.com"
    # ]
  end
end
