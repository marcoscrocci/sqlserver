DECLARE @cnt INT = 0;

WHILE @cnt < 10
BEGIN
   PRINT concat('Inside simulated FOR LOOP on TechOnTheNet.com - @cnt = ', @cnt);
   SET @cnt = @cnt + 1;
END;

PRINT 'Done simulated FOR LOOP on TechOnTheNet.com';
GO