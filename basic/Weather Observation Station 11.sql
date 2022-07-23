SET @vowels = 'a,e,i,o,u';
SELECT DISTINCT city
    FROM station
    WHERE FIND_IN_SET(LEFT(city, 1), @vowels) = 0
        OR FIND_IN_SET(RIGHT(city, 1), @vowels) = 0;