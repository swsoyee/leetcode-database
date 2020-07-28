-- 627 Swap Salary
/*
 Method 1
 */
(
    UPDATE
        salary
    SET
        sex = CASE
            sex
            WHEN 'f' THEN 'm'
            ELSE 'f'
        END
    WHERE
        1
)
/*
 Method 2
 */
(
    UPDATE
        salary
    SET
        sex = IF(sex = 'm', 'f', 'm')
)