# Write your MySQL query statement below

SELECT id, movie, description, rating
    FROM  Cinema
    WHERE id % 2 = 1 #홀수
    AND description <> 'boring'
    ORDER BY rating DESC