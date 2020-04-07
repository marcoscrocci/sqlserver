SET IDENTITY_INSERT tb_teste ON  --Desabilita o IDENTITY

INSERT INTO [dbo].[tb_teste]
           ([descricao]
           ,[valor]
           ,[data_info]
           ,[ordem])
     VALUES
           ('TESTE4'
           ,4
           ,getdate()
           ,4)

SET IDENTITY_INSERT tb_teste OFF  --Habilita o IDENTITY


INSERT INTO [dbo].[tb_teste]
           ([descricao]
           ,[valor]
           ,[data_info]
           ,[ordem]
		   ,[id])
     VALUES
           ('TESTE3'
           ,3
           ,getdate()
           ,3
		   ,3)

select * from tb_teste