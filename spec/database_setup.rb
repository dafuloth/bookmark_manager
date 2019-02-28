require 'pg'

def clean_database
  conn = PG.connect(dbname: 'bookmark_manager_test')
  conn.exec("TRUNCATE bookmarks")
end

def build_database
  conn = PG.connect(dbname: 'bookmark_manager_test')
  conn.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com', 'Makers Academy');")
  conn.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com', 'Destroy All Software');")
  conn.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com', 'Google');")
  conn.exec("INSERT INTO bookmarks VALUES(4, 'http://www.thebestcoder.co.uk', 'thebestcoder');")
end
