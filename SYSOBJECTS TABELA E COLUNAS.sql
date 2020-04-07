SELECT
  999999 AS RECNO,
  CAST(db_name() AS VARCHAR(128)) AS CATALOG_NAME,
  CAST(user_name(o.uid) AS VARCHAR(128)) AS SCHEMA_NAME,
  CAST(o.name AS VARCHAR(128)) AS TABLE_NAME,
  --CAST(x.name AS VARCHAR(128)) AS INDEX_NAME,
  CAST(c.name AS VARCHAR(128)) AS COLUMN_NAME,
  --xk.keyno AS COLUMN_POSITION,
  --CAST(NULL AS VARCHAR(1)) AS PKEY_NAME,
  --  (CASE WHEN x.status & 0x800 <> 0 THEN 4 ELSE 0 END) +
  --  (CASE WHEN x.status & 0x2 <> 0 THEN 2 ELSE 1 END)
  --AS INDEX_TYPE,
  --(CASE WHEN indexkey_property(x.id, x.indid, 1, N'isdescending') <> 0 THEN 'D' ELSE 'A' END) AS SORT_ORDER,
  CAST(NULL AS VARCHAR(1)) AS FILTER
FROM
  sysobjects o, syscolumns c
WHERE  0 = 0
  and  o.id = c.id
  /*and  o.id = xk.id
  and  x.indid = xk.indid
  and  c.colid = xk.colid
  and  xk.keyno <= x.keycnt*/
  --and  o.xtype<>'S'
  --and  LEFT(x.name, 8/*_WA_Sys_*/) <> '_WA_Sys_'
  --AND o.name LIKE 'tesmoedasvlr'
  and c.name = 'AREAEMPRESA'
ORDER BY o.name