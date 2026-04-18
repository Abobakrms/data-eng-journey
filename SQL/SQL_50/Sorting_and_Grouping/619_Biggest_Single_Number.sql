SELECT MAX(num) AS num
FROM (
    SELECT
        num,
        COUNT(num) OVER(PARTITION BY num) AS count_nums
    FROM 
        MyNumbers
) AS NumberCounts
WHERE count_nums = 1;