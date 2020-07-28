-- 196 Delete Duplicate Emails
DELETE FROM
    Person
WHERE
    Id NOT IN (
        SELECT
            sub.Id
        FROM
            (
                SELECT
                    MIN(Id) AS Id
                FROM
                    Person
                GROUP BY
                    Email
            ) AS sub
    )