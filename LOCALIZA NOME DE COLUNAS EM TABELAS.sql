-- LOCALIZA NOME DE COLUNAS EM TABELAS

DECLARE @column		sysname
SET @column = '%TIPOMOVIMENTACAO%'

SELECT a.name AS COLUNA, b.name AS TABELA
FROM dbo.syscolumns a JOIN dbo.sysobjects b ON a.id = b.id
WHERE a.name LIKE @column
AND b.xtype = 'U'
ORDER BY tabela