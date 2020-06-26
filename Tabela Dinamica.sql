DECLARE @sql VARCHAR(MAX)

CREATE TABLE #carta_controle (id int)

INSERT INTO #carta_controle (id) VALUES (1)
INSERT INTO #carta_controle (id) VALUES (2)
INSERT INTO #carta_controle (id) VALUES (3)

SELECT * 
FROM #carta_controle

SET @sql = 'ALTER TABLE #carta_controle ADD ' + 'VALOR_001' + ' INT' 
EXEC(@sql)

SELECT * 
FROM #carta_controle


DROP TABLE #carta_controle

