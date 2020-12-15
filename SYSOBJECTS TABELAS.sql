SELECT DISTINCT
  CONCAT('DROP TABLE ', o.name, ';') AS EXCLUIR_TABELAS, 
  CONCAT('SELECT COUNT(*) AS QTDE_REGISTROS, ''', o.name, ''' AS TABELA ', ' FROM ', o.name, ' UNION ALL ') AS QTDE_REGISTROS_TABELAS, 
  o.*,
  CAST(db_name() AS VARCHAR(128)) AS CATALOG_NAME,
  CAST(user_name(o.uid) AS VARCHAR(128)) AS SCHEMA_NAME,
  CAST(o.name AS VARCHAR(128)) AS TABLE_NAME
FROM
  sysobjects o
WHERE  0 = 0
  and CAST(db_name() AS VARCHAR(128)) =  'dashboard'
  and o.xtype = 'U'
ORDER BY o.crdate DESC