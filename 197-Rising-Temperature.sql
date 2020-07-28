-- 197. Rising Temperature
SELECT
    b.Id
FROM
    Weather AS a
    JOIN Weather AS b ON a.RecordDate = DATE_SUB(b.RecordDate, INTERVAL 1 DAY)
WHERE
    b.Temperature > a.Temperature