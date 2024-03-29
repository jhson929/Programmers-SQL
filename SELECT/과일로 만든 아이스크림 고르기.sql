-- 총 주문량 > 3,000
-- 주 성분 : 과일
-- 총주문량 DESC

SELECT II.FLAVOR
FROM ICECREAM_INFO AS II
    JOIN FIRST_HALF AS FH ON II.FLAVOR = FH.FLAVOR
WHERE FH.TOTAL_ORDER > 3000
  AND II.INGREDIENT_TYPE = 'fruit_based'
ORDER BY FH.TOTAL_ORDER DESC
