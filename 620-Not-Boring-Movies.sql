-- 620 Not Boring Movies
SELECT
    id,
    movie,
    description,
    rating
FROM
    cinema
WHERE
    description != 'boring'
    AND mod(id, 2) = 1
ORDER BY
    rating DESC