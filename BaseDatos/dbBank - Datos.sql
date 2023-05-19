USE [dbBankAgricola]
GO
SET IDENTITY_INSERT [dbo].[BankAccount] ON 

INSERT [dbo].[BankAccount] ([Id], [UserNameAccount], [IdentifyAccount], [FundAccount], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [AccountType]) VALUES (7, N'Erick Galdámez', N'265221', CAST(90.04000000 AS Decimal(20, 8)), 0, N'user_create_sysDev', CAST(N'2023-05-08T17:13:47.0000000' AS DateTime2), CAST(N'2023-05-18T17:14:35.0000000' AS DateTime2), NULL, 4)
INSERT [dbo].[BankAccount] ([Id], [UserNameAccount], [IdentifyAccount], [FundAccount], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [AccountType]) VALUES (8, N'Victor Ríos', N'842406', CAST(28.85000000 AS Decimal(20, 8)), 0, N'user_create_sysDev', CAST(N'2023-05-08T17:19:32.0000000' AS DateTime2), NULL, NULL, 5)
INSERT [dbo].[BankAccount] ([Id], [UserNameAccount], [IdentifyAccount], [FundAccount], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [AccountType]) VALUES (10, N'MLuisa Salazar', N'896895', CAST(54.98000000 AS Decimal(20, 8)), 0, N'user_create_sysDev', CAST(N'2023-05-08T17:50:45.0000000' AS DateTime2), CAST(N'2023-05-18T17:14:35.0000000' AS DateTime2), NULL, 4)
INSERT [dbo].[BankAccount] ([Id], [UserNameAccount], [IdentifyAccount], [FundAccount], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [AccountType]) VALUES (13, N'Gustavito el chiquitin', N'164846', CAST(34.99000000 AS Decimal(20, 8)), 1, N'user_create_sysDev', CAST(N'2023-05-09T15:37:18.0000000' AS DateTime2), NULL, NULL, 5)
SET IDENTITY_INSERT [dbo].[BankAccount] OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230223145246_creteDataDataBase', N'6.0.14')
GO
SET IDENTITY_INSERT [dbo].[BankTransfers] ON 

INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (3, 8, 10, CAST(10.00000000 AS Decimal(20, 8)), N'd', 0, N'd', CAST(N'2023-05-08T13:13:47.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (4, 7, 8, CAST(15.00000000 AS Decimal(20, 8)), N'd', 0, N'd', CAST(N'2023-05-08T14:13:47.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (5, 7, 10, CAST(20.00000000 AS Decimal(20, 8)), N'd', 0, N'd', CAST(N'2023-05-08T15:13:47.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (6, 10, 8, CAST(50.00000000 AS Decimal(20, 8)), N'd', 0, N'd', CAST(N'2023-05-08T16:13:47.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (8, 10, 7, CAST(5.00000000 AS Decimal(20, 8)), N'd', 0, N'd', CAST(N'2023-05-08T17:13:47.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (9, NULL, 10, CAST(25.00000000 AS Decimal(20, 8)), N'd', 0, N'd', CAST(N'2023-05-09T00:00:00.0000000' AS DateTime2), NULL, NULL, N'3')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (10, NULL, 10, CAST(10.00000000 AS Decimal(20, 8)), N'D', 0, N'd', CAST(N'2023-05-09T00:00:00.0000000' AS DateTime2), NULL, NULL, N'2')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (16, 10, 7, CAST(5.00000000 AS Decimal(20, 8)), N'motivo 1', 0, N'user_create_sysDev', CAST(N'2023-05-11T18:05:18.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (17, 10, 7, CAST(8.00000000 AS Decimal(20, 8)), N'motivo 1', 0, N'user_create_sysDev', CAST(N'2023-05-11T18:06:53.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (18, 10, 7, CAST(8.00000000 AS Decimal(20, 8)), N'motivo 1', 0, N'user_create_sysDev', CAST(N'2023-05-11T18:12:41.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (19, 10, 7, CAST(10.00000000 AS Decimal(20, 8)), N'motivo 1', 0, N'user_create_sysDev', CAST(N'2023-05-11T18:15:34.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (20, 7, 10, CAST(10.00000000 AS Decimal(20, 8)), N'motivo 1', 0, N'user_create_sysDev', CAST(N'2023-05-11T18:15:34.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (29, 10, 7, CAST(10.00000000 AS Decimal(20, 8)), N'motivo 1', 0, N'user_create_sysDev', CAST(N'2023-05-11T18:28:38.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (30, 7, 10, CAST(10.00000000 AS Decimal(20, 8)), N'motivo 1', 0, N'user_create_sysDev', CAST(N'2023-05-11T18:28:38.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (31, 10, 7, CAST(10.00000000 AS Decimal(20, 8)), N'motivo 1', 0, N'user_create_sysDev', CAST(N'2023-05-11T19:21:36.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (32, 7, 10, CAST(10.00000000 AS Decimal(20, 8)), N'motivo 1', 0, N'user_create_sysDev', CAST(N'2023-05-11T19:21:36.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (50, 10, 7, CAST(5.00000000 AS Decimal(20, 8)), N'Soy buena onda', 0, N'user_create_sysDev', CAST(N'2023-05-11T20:04:28.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (51, 7, 10, CAST(5.00000000 AS Decimal(20, 8)), N'Soy buena onda', 0, N'user_create_sysDev', CAST(N'2023-05-11T20:04:28.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (55, 10, 7, CAST(5.00000000 AS Decimal(20, 8)), N'Soy buena onda', 0, N'user_create_sysDev', CAST(N'2023-05-11T20:09:22.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (56, 7, 10, CAST(5.00000000 AS Decimal(20, 8)), N'Soy buena onda', 0, N'user_create_sysDev', CAST(N'2023-05-11T20:09:22.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (57, 10, 7, CAST(5.00000000 AS Decimal(20, 8)), N'Soy buena onda', 0, N'user_create_sysDev', CAST(N'2023-05-11T20:09:26.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (58, 7, 10, CAST(5.00000000 AS Decimal(20, 8)), N'Soy buena onda', 0, N'user_create_sysDev', CAST(N'2023-05-11T20:09:26.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (59, 7, 10, CAST(0.02000000 AS Decimal(20, 8)), N'motivo 1', 0, N'user_create_sysDev', CAST(N'2023-05-11T20:10:27.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (60, 10, 7, CAST(0.02000000 AS Decimal(20, 8)), N'motivo 1', 0, N'user_create_sysDev', CAST(N'2023-05-11T20:10:27.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (61, 10, 7, CAST(5.00000000 AS Decimal(20, 8)), N'Soy buena onda', 0, N'user_create_sysDev', CAST(N'2023-05-17T15:43:47.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (62, 7, 10, CAST(5.00000000 AS Decimal(20, 8)), N'Soy buena onda', 0, N'user_create_sysDev', CAST(N'2023-05-17T15:43:47.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (63, 10, 7, CAST(5.00000000 AS Decimal(20, 8)), N'Soy buena onda', 0, N'user_create_sysDev', CAST(N'2023-05-17T15:43:50.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (64, 7, 10, CAST(5.00000000 AS Decimal(20, 8)), N'Soy buena onda', 0, N'user_create_sysDev', CAST(N'2023-05-17T15:43:50.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (65, 10, 7, CAST(5.00000000 AS Decimal(20, 8)), N'Soy buena onda', 0, N'user_create_sysDev', CAST(N'2023-05-18T17:14:20.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (66, 7, 10, CAST(5.00000000 AS Decimal(20, 8)), N'Soy buena onda', 0, N'user_create_sysDev', CAST(N'2023-05-18T17:14:20.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (67, 10, 7, CAST(5.00000000 AS Decimal(20, 8)), N'Soy buena onda', 0, N'user_create_sysDev', CAST(N'2023-05-18T17:14:22.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (68, 7, 10, CAST(5.00000000 AS Decimal(20, 8)), N'Soy buena onda', 0, N'user_create_sysDev', CAST(N'2023-05-18T17:14:22.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (69, 10, 7, CAST(5.00000000 AS Decimal(20, 8)), N'Soy buena onda', 0, N'user_create_sysDev', CAST(N'2023-05-18T17:14:35.0000000' AS DateTime2), NULL, NULL, N'1')
INSERT [dbo].[BankTransfers] ([Id], [IdentifyAccountOrigin], [IdentifyAccountDestination], [Amount], [Motivo], [Borrado], [Usuario], [FechaCreacion], [FechaModificacion], [FechaBorrado], [TransferType]) VALUES (70, 7, 10, CAST(5.00000000 AS Decimal(20, 8)), N'Soy buena onda', 0, N'user_create_sysDev', CAST(N'2023-05-18T17:14:35.0000000' AS DateTime2), NULL, NULL, N'1')
SET IDENTITY_INSERT [dbo].[BankTransfers] OFF
GO
SET IDENTITY_INSERT [dbo].[TransferType] ON 

INSERT [dbo].[TransferType] ([Id], [NameType]) VALUES (1, N'Terceros')
INSERT [dbo].[TransferType] ([Id], [NameType]) VALUES (2, N'Abonos')
INSERT [dbo].[TransferType] ([Id], [NameType]) VALUES (3, N'Retiros')
INSERT [dbo].[TransferType] ([Id], [NameType]) VALUES (4, N'Ahorros')
INSERT [dbo].[TransferType] ([Id], [NameType]) VALUES (5, N'Corriente')
SET IDENTITY_INSERT [dbo].[TransferType] OFF
GO
