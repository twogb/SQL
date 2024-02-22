SELECT p.ID AS NAME, 
  ((YEAR(p.FINISH_DATE) - YEAR(p.START_DATE)) * 12 + (MONTH(p.FINISH_DATE) - MONTH (p.START_DATE))) *  sum(w.SALARY) AS PRICE
FROM PROJECT p
INNER JOIN PROJECT_WORKER pw
  ON p.ID = pw.PROJECT_ID 
INNER JOIN WORKER w 
  ON w.ID = pw.WORKER_ID
GROUP BY p.ID;