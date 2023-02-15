-- Script that lists all shows contained in hbtn_0d_tvshows without a genre linked
-- Each record displays tv_shows.title - tv_show_genres.genre_id
-- Ordered by tv_shows.title and tv_show_genres.genre_id ASC
-- Only one SELECT statement; If no genre, display NULL

SELECT tv_shows.title, tv_show_genres.genre_id
FROM tv_shows
LEFT OUTER JOIN tv_show_genres
ON tv_shows.id = tv_show_genres.show_id
WHERE tv_show_genres.genre_id IS NULL
ORDER BY tv_shows.title, tv_show_genres.genre_id ASC;