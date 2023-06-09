USE [dbBankAgricola]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 19/5/2023 15:46:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankAccount]    Script Date: 19/5/2023 15:46:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccount](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserNameAccount] [nvarchar](300) NOT NULL,
	[IdentifyAccount] [nvarchar](128) NOT NULL,
	[FundAccount] [decimal](20, 8) NOT NULL,
	[Borrado] [bit] NOT NULL,
	[Usuario] [nvarchar](128) NOT NULL,
	[FechaCreacion] [datetime2](7) NOT NULL,
	[FechaModificacion] [datetime2](7) NULL,
	[FechaBorrado] [datetime2](7) NULL,
	[AccountType] [bigint] NOT NULL,
 CONSTRAINT [PK_BankAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankBlockAccount]    Script Date: 19/5/2023 15:46:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankBlockAccount](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PathFile] [nvarchar](500) NOT NULL,
	[IdBankAccount] [bigint] NOT NULL,
	[Borrado] [bit] NOT NULL,
	[Usuario] [nvarchar](128) NOT NULL,
	[FechaCreacion] [datetime2](7) NOT NULL,
	[FechaModificacion] [datetime2](7) NULL,
	[FechaBorrado] [datetime2](7) NULL,
 CONSTRAINT [PK_BankBlockAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankTransfers]    Script Date: 19/5/2023 15:46:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankTransfers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdentifyAccountOrigin] [bigint] NULL,
	[IdentifyAccountDestination] [bigint] NOT NULL,
	[Amount] [decimal](20, 8) NOT NULL,
	[Motivo] [nvarchar](200) NOT NULL,
	[Borrado] [bit] NOT NULL,
	[Usuario] [nvarchar](128) NOT NULL,
	[FechaCreacion] [datetime2](7) NOT NULL,
	[FechaModificacion] [datetime2](7) NULL,
	[FechaBorrado] [datetime2](7) NULL,
	[TransferType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BankTransfers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransferType]    Script Date: 19/5/2023 15:46:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransferType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[NameType] [varchar](50) NOT NULL,
	[Clasification] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TransferType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BankAccount] ADD  CONSTRAINT [DF_BankAccount_FundAccount]  DEFAULT ((0)) FOR [FundAccount]
GO
ALTER TABLE [dbo].[BankAccount] ADD  CONSTRAINT [DF_BankAccount_Borrado]  DEFAULT ((0)) FOR [Borrado]
GO
ALTER TABLE [dbo].[BankAccount] ADD  CONSTRAINT [DF_BankAccount_AccountType]  DEFAULT ((1)) FOR [AccountType]
GO
ALTER TABLE [dbo].[BankTransfers] ADD  CONSTRAINT [DF_BankTransfers_Borrado]  DEFAULT ((0)) FOR [Borrado]
GO
ALTER TABLE [dbo].[BankTransfers] ADD  CONSTRAINT [DF_BankTransfers_TransferType]  DEFAULT ((1)) FOR [TransferType]
GO
ALTER TABLE [dbo].[TransferType] ADD  CONSTRAINT [DF_TransferType_Clasification]  DEFAULT ('Transaccion') FOR [Clasification]
GO
ALTER TABLE [dbo].[BankBlockAccount]  WITH CHECK ADD  CONSTRAINT [FK_BankBlockAccount_BankAccount_IdBankAccount] FOREIGN KEY([IdBankAccount])
REFERENCES [dbo].[BankAccount] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BankBlockAccount] CHECK CONSTRAINT [FK_BankBlockAccount_BankAccount_IdBankAccount]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllAccount]    Script Date: 19/5/2023 15:46:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetAllAccount]
	
AS
BEGIN

	select
		CONCAT('key',cuentas.Id) as 'key', 
		cuentas.*,
		tipos.NameType
	from BankAccount cuentas
		inner join TransferType tipos on cuentas.AccountType = tipos.Id

END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetTransferencesByAccountOrigin]    Script Date: 19/5/2023 15:46:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_GetTransferencesByAccountOrigin]
(
	@IdAccountOrigin varchar(50)
)
AS
BEGIN
	
	select 
		usuario.Nombres,
		usuario.Apellidos,
		account.Id as 'IdAccount',  
		account.UserNameAccount as 'NameAccount',
		account.IdentifyAccount as 'NumberAccount',
		transfers.Id as 'IdTransfer',
		transfers.Amount as 'AmountTransfer',
		transfers.Motivo,
		transfers.FechaCreacion
	from dbBankAgricola.dbo.BankTransfers transfers
		inner join dbBankAgricola.dbo.BankAccount account on transfers.IdentifyAccountOrigin = account.IdentifyAccount  --CONVERT(varchar, account.Id)
		inner join dbBankAgricolaAuth.dbo.AspNetUsers usuario on account.Usuario = usuario.Id
		where transfers.IdentifyAccountOrigin = @IdAccountOrigin

END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetTransferTypeByClasification]    Script Date: 19/5/2023 15:46:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetTransferTypeByClasification]
(
	@Clasification varchar(50)
)
AS
BEGIN
	select 
		t.*
	from TransferType t
	where t.Clasification = @Clasification

END
GO
/****** Object:  StoredProcedure [dbo].[usp_LastTransferences]    Script Date: 19/5/2023 15:46:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_LastTransferences]
AS
BEGIN
	select 
		top 10
		transferencia.Id as 'IdTransferencia',
		ISNULL(cuentasOrigen.IdentifyAccount, '-') as 'NumeroCuentaOrigen',
		ISNULL(cuentasOrigen.UserNameAccount, '-') as 'NombreCuentaOrigen',
		transferencia.Amount as 'Monto',
		ISNULL(cuentasDestino.IdentifyAccount, '-') as 'NumeroCuentaDestino',
		ISNULL(cuentasDestino.UserNameAccount, '-') as 'NombreCuentaDestino',

		CONVERT(varchar, transferencia.FechaCreacion ,3) as 'FechaTransferencia',
		tipo.NameType as 'TipoTransacccion'

	from BankTransfers transferencia
		inner join TransferType tipo on tipo.Id = transferencia.TransferType
		left join BankAccount cuentasDestino on transferencia.IdentifyAccountDestination = cuentasDestino.Id
		left join BankAccount cuentasOrigen on transferencia.IdentifyAccountOrigin = cuentasOrigen.Id
	order by transferencia.FechaCreacion desc
END



--EXEC usp_LastTransferences

GO
