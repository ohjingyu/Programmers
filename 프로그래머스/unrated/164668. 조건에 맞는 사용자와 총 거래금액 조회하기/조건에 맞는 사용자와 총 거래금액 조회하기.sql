SELECT USER_ID, NICKNAME, SUM(PRICE) ASTOTAL_SALES
FROM USED_GOODS_BOARD B, USED_GOODS_USER U
WHERE B.WRITER_ID = U.USER_ID
AND B.STATUS = 'DONE'
GROUP BY U.USER_ID, U.NICKNAME
HAVING SUM(B.PRICE) >= 700000
ORDER BY SUM(B.PRICE)