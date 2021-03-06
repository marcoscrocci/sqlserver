DECLARE @NINICIO INT = 10
DECLARE @NFIM INT = 50

;WITH TABELA(NUMERO,DESCRICAO)
AS
(
	SELECT @NINICIO AS NUMERO, CONCAT('DESCRICAO', @NINICIO) AS DESCRICAO
	UNION ALL
	SELECT NUMERO + 1 AS NUMERO, CONCAT('DESCRICAO', NUMERO + 1) AS DESCRICAO
	FROM TABELA 
	WHERE NUMERO < @NFIM
)

SELECT * FROM TABELA ORDER BY 1