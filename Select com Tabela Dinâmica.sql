DECLARE @TABELA TABLE (CODIGO INT, DESCRICAO VARCHAR(50));

INSERT INTO @TABELA (CODIGO, DESCRICAO) VALUES (1, 'PRIMEIRO REGISTRO');
INSERT INTO @TABELA (CODIGO, DESCRICAO) VALUES (2, 'SEGUNDO REGISTRO');
INSERT INTO @TABELA (CODIGO, DESCRICAO) VALUES (3, 'TERCEIRO REGISTRO');

SELECT T.*
FROM   @TABELA T
ORDER BY T.CODIGO;
