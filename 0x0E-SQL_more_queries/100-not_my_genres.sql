-- Script that uses the hbtn_0d_tvshows database to list all genres not linked to the show Dexter
-- Each record displays: tv_genres.name
-- Ordered by genre name ASC; Maximum two SELECT statements
-- tv_shows has only one record where title = Dexter, Different id

SELECT DISTINCT name
  FROM tv_genres AS g
       INNER JOIN tv_show_genres AS s
       ON g.id = s.genre_id

       INNER JOIN tv_shows AS t
       ON s.show_id = t.id
       WHERE g.name NOT IN
             (SELECT name
                FROM tv_genres AS g
	             INNER JOIN tv_show_genres AS s
		     ON g.id = s.genre_id

		     INNER JOIN tv_shows AS t
		     ON s.show_id = t.id
		     WHERE t.title = 'Dexter')
 ORDER BY g.name;