DECLARE 
	@depois DATETIME = CONVERT(DATETIME, '04/10/2018 10:20:00', 103)
	,@antes DATETIME = CONVERT(DATETIME, '04/10/2018 10:15:30', 103)


SELECT FORMAT(FLOOR(CAST(@depois-@antes AS FLOAT)),'0d ')+FORMAT(@depois-@antes,'HH:mm:ss')