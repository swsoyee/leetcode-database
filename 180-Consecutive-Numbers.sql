-- 180 Consecutive Numbers
-- https://leetcode.com/problems/consecutive-numbers/
SELECT
    DISTINCT Num AS ConsecutiveNums
FROM
    (
        SELECT
            Num,
            LAG(Num, 1) OVER(
                ORDER BY
                    Id
            ) AS Lag_1,
            LAG(Num, 2) OVER(
                ORDER BY
                    Id
            ) AS Lag_2
        FROM
            Logs
    ) AS sub
WHERE
    sub.Num = Lag_1
    AND sub.Num = Lag_2