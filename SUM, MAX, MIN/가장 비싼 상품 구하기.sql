SELECT PRICE AS MAX_PRICE
FROM PRODUCT
WHERE PRICE = (SELECT MAX(PRICE) FROM PRODUCT)
