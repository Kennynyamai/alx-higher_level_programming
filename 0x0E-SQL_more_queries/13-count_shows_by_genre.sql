-- Script that lists all genres from hbtn_0d_tvshows
-- Displays the number of shows linked to each
-- Each record displays <TV Show genre> - <Number of shows linked to this genre>
-- First col: genre; Second col: number_of_shows
-- Only genres with shows; Ordered by number of shows DESC; Only one SELECT statement

SELECT tv_g.name AS genre
       COUNT(*) AS number_of_shows
  FROM tv_genres AS tv_g
       INNER JOIN tv_show_genres AS tv_s_g
       ON tv_g.id = tv_s_g.genre_id
 GROUP BY tv_g.name
 ORDER BY number_of_shows DESC;