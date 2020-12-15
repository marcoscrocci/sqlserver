-- Redefinir o último número gerado para o identity de uma tabela
dbcc checkident('NomeDaTabela', RESEED, <último número>)