SELECT m.name AS "Movie Name", COUNT(DISTINCT mg.genreId) AS Number_of_Genres FROM movies m
JOIN moviesGenres mg ON m.id = mg.movieId
WHERE mg.genreId <> (SELECT id FROM genres WHERE name = 'Comedy')
GROUP BY m.id, m.name
HAVING COUNT(DISTINCT mg.genreId) > 2;