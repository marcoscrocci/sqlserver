DECLARE @datestring NVARCHAR(20) = '20200110235959'
DECLARE @Teste TABLE (
	DATA_TESTE DATETIME
)

-- desired format: '20120225 14:36:20'
SET @datestring = STUFF(STUFF(STUFF(@datestring,13,0,':'),11,0,':'),9,0,' ')


INSERT INTO @Teste (DATA_TESTE) 
SELECT CONVERT(DATETIME, @datestring) AS FormattedDate

SELECT * FROM @Teste