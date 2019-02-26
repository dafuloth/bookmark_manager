SELECT * FROM bookmarks;

DELETE FROM bookmarks WHERE url='http://twitter.com';

UPDATE bookmarks
SET url='http://www.destroyallsoftware.com'
WHERE id=2;