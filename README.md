# Bookmark Manager

(https://github.com/makersacademy/course/tree/master/bookmark_manager)

## Creating User Stories

### Show a list of bookmarks

```sh
As a user
So that I can see my bookmarks
I'd like to see a list of my bookmarks

```

| Object         | Messages                           |  
| -------------  | ----------------------------       |
| `BookmarkManager`| `list()` - returns `list_of_bookmarks` |


![Domain Model: Show a list of bookmarks](basic_domain_model_1.svg)

## Database setup instructions

```sql

CREATE DATABASE "bookmark_manager";

\c bookmark_manager
You are now connected to database "bookmark_manager" as user "student".

bookmark_manager=# CREATE TABLE bookmarks (
id SERIAL PRIMARY KEY,
url VARCHAR(60)
);

bookmark_manager=# \dt
          List of relations
 Schema |   Name    | Type  |  Owner  
--------+-----------+-------+---------
 public | bookmarks | table | student
(1 row)

bookmark_manager=# SELECT * FROM bookmarks;
 id | url 
----+-----
(0 rows)

```