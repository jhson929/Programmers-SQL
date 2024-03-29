-- 2022년 3월의 판매날짜, 상품id, 유저id, 판매량
-- 오프라인의 판매 데이터 user_id는 null
-- 판매일 asc, 상품 id asc, 유저id asc
WITH SALES AS (
    SELECT SALES_DATE
          ,PRODUCT_ID
          ,USER_ID
          ,SALES_AMOUNT
    FROM ONLINE_SALE
    WHERE SALES_DATE BETWEEN '2022-03-01 00:00:00' AND '2022-03-31 23:59:59'
    
    UNION
    
    SELECT SALES_DATE
          ,PRODUCT_ID
          ,NULL AS USER_ID
          ,SALES_AMOUNT
    FROM OFFLINE_SALE
    WHERE SALES_DATE BETWEEN '2022-03-01 00:00:00' AND '2022-03-31 23:59:59'
)

SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SLAES_DATE
      ,PRODUCT_ID
      ,USER_ID
      ,SALES_AMOUNT
FROM SALES
ORDER BY SALES_DATE ASC, PRODUCT_ID ASC, USER_ID ASC
