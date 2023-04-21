SELECT B.CATEGORY,SUM(S.SALES) AS TOTAL_SALES
FROM BOOK B, BOOK_SALES S
WHERE B.BOOK_ID = S.BOOK_ID
AND TO_CHAR(S.SALES_DATE, 'YYYY-MM') = '2022-01'
GROUP BY B.CATEGORY
ORDER BY CATEGORY