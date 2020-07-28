-- 595 Big Countries
/*
 Method 1
 */
(
    SELECT
        name,
        population,
        area
    FROM
        world
    WHERE
        area > 3000000
        OR population > 25000000
)
/*
 Method 2
 */
(
    SELECT
        name,
        population,
        area
    FROM
        world
    WHERE
        area > 3000000
    UNION
    SELECT
        name,
        population,
        area
    FROM
        world
    WHERE
        population > 25000000
)