 -- > 평균 대여 기간이 7일 이상인 자동차
 -- 소수점 두번째 자리에서 반올림
 -- 평균 대여기간 DESC, 자동차 ID ASC
SELECT CAR_ID, ROUND(AVG(DATEDIFF(END_DATE, START_DATE)+1), 1) AS AVERAGE_DURATION
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
HAVING AVERAGE_DURATION >= 7
ORDER BY AVERAGE_DURATION DESC, CAR_ID DESC
