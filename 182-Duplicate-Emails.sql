-- 182 Duplicate Emails
SELECT
    Email
FROM
    (
        SELECT
            Email,
            COUNT(*) AS Count
        FROM
            Person
        GROUP BY
            Email
    ) AS sub
WHERE
    sub.Count > 1