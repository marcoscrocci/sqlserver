-- Redefinir o �ltimo n�mero gerado para o identity de uma tabela
dbcc checkident('NomeDaTabela', RESEED, <�ltimo n�mero>)