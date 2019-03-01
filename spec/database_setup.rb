require 'pg'

def clean_database
  conn = PG.connect(dbname: 'bookmark_manager_test')
  # conn.exec("TRUNCATE bookmarks")
  conn.exec("DROP TABLE bookmarks")
end

def build_database
  conn = PG.connect(dbname: 'bookmark_manager_test')
  conn.exec("CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60), title VARCHAR(60));")
  conn.exec("INSERT INTO bookmarks VALUES(DEFAULT, 'http://www.makersacademy.com', 'Makers Academy');")
  conn.exec("INSERT INTO bookmarks VALUES(DEFAULT, 'http://www.destroyallsoftware.com', 'Destroy All Software');")
  conn.exec("INSERT INTO bookmarks VALUES(DEFAULT, 'http://www.google.com', 'Google');")
  conn.exec("INSERT INTO bookmarks VALUES(DEFAULT, 'https://dafuloth.me', 'dafuloth.me');")
end
