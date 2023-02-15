-- Script that lists all shows, and all genres linked to that show, from hbtn_0d_tvshows
-- Each record displays tv_shows.title - tv_genres.name
-- Ordered by tv_shows.title and tv_genres.name ASC
-- Only one SELECT statement; If no genre, display NULL

SELECT tv_shows.title, tv_genres.name FROM tv_shows
LEFT OUTER JOIN tv_show_genres
ON tv_show_genres.show_id = tv_shows.id
LEFT OUTER JOIN tv_genres
ON tv_genres.id = tv_show_genres.genre_id
ORDER BY tv_shows.title ASC, tv_genres.name ASC;