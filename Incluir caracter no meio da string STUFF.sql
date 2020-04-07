DECLARE @data_amostra_str VARCHAR(22) = '20200406171400'

DECLARE @resultado VARCHAR(22) = STUFF(STUFF(SUBSTRING(@data_amostra_str, 1, 8), 5, 0, '-'), 8, 0, '-')

DECLARE @data DATE = CAST(STUFF(STUFF(SUBSTRING(@data_amostra_str, 1, 8), 5, 0, '-'), 8, 0, '-') AS DATE)

PRINT @resultado

PRINT @data