USE [Inventario_Almacen]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 15/08/2019 11:04:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Id] [int] IDENTITY(1000,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Proveedor] [char](30) NULL,
	[Fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 15/08/2019 11:04:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Nombre] [varchar](30) NOT NULL,
	[Contraseña] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 15/08/2019 11:04:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[Id] [int] IDENTITY(1000,1) NOT NULL,
	[Nombre_Vendedor] [varchar](30) NULL,
	[Id_Producto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([Id], [Nombre], [Proveedor], [Fecha]) VALUES (1000, N'Papas', N'Super Ricas                   ', CAST(N'2019-08-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Producto] ([Id], [Nombre], [Proveedor], [Fecha]) VALUES (1001, N'Gomas', N'Colombina                     ', CAST(N'2019-05-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Producto] ([Id], [Nombre], [Proveedor], [Fecha]) VALUES (1002, N'Gaseosa', N'Postobon                      ', CAST(N'2019-03-11T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Producto] OFF
INSERT [dbo].[Usuario] ([Nombre], [Contraseña]) VALUES (N'Edgar', N'12345edgar')
INSERT [dbo].[Usuario] ([Nombre], [Contraseña]) VALUES (N'Leonardo', N'Leonardo123456')
SET IDENTITY_INSERT [dbo].[Venta] ON 

INSERT [dbo].[Venta] ([Id], [Nombre_Vendedor], [Id_Producto]) VALUES (1000, N'Leonardo', 1001)
SET IDENTITY_INSERT [dbo].[Venta] OFF
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[Producto] ([Id])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([Nombre_Vendedor])
REFERENCES [dbo].[Usuario] ([Nombre])
GO
