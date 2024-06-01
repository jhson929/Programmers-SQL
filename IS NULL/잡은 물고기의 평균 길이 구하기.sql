SELECT ROUND(AVG(LENGTH2), 2) AS AVERAGE_LENGTH
FROM (SELECT IF(LENGTH IS NULL, 10, LENGTH) AS LENGTH2
      FROM FISH_INFO) AS SUB
