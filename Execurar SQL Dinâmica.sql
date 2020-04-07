DECLARE @sqlCommand varchar(1000)
DECLARE @columnList varchar(75)
DECLARE @city varchar(75)
SET @columnList = 'CustomerID, ContactName, City'
SET @city = '''London'''
SET @sqlCommand = 'SELECT ' + @columnList + ' FROM customers WHERE City = ' + @city
EXEC (@sqlCommand)


--SELECT MAX(LEN(EVENTODATASUL)) FROM VERBASFOLHA WHERE EVENTODATASUL IS NOT NULL