-- 식당 아이디, 식당 이름, 음식 종류, 즐겨찾기 수, 주소, 리뷰 평균점수 출력
-- 서울 식당
-- 평균점수 3번째 자리에서 반올림
-- 평균점수 DESC, 즐겨찾기 수 DESC
SELECT RI.REST_ID
      ,RI.REST_NAME
      ,RI.FOOD_TYPE
      ,RI.FAVORITES
      ,RI.ADDRESS
      ,ROUND(AVG(REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO AS RI
    JOIN REST_REVIEW AS RR ON RI.REST_ID = RR.REST_ID
WHERE RI.ADDRESS LIKE '서울%'
GROUP BY RI.REST_ID, RI.REST_NAME, RI.FOOD_TYPE, RI.FAVORITES, RI.ADDRESS
ORDER BY SCORE DESC, RI.FAVORITES DESC
