/****** Object:  Table [dbo].[Category]    Script Date: 9/30/2019 5:55:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[InsertedBy] [varchar](50) NULL,
	[InsertedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 9/30/2019 5:55:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[StatusId] [int] NULL,
	[InsertedBy] [varchar](50) NULL,
	[InsertedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Item]    Script Date: 9/30/2019 5:55:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Item]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Item](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[ItemName] [varchar](50) NULL,
	[InsertedBy] [varchar](50) NULL,
	[InsertedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Order]    Script Date: 9/30/2019 5:55:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[OrderDate] [datetime] NULL,
	[OrderAmount] [numeric](18, 2) NULL,
	[InsertedBy] [varchar](50) NULL,
	[InsertedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 9/30/2019 5:55:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ItemId] [int] NULL,
	[Quantity] [numeric](18, 2) NULL,
	[Amount] [numeric](18, 2) NULL,
	[InsertedBy] [varchar](50) NULL,
	[InsertedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Status]    Script Date: 9/30/2019 5:55:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Status]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Status](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusCode] [varchar](10) NULL,
	[StatusDesc] [varchar](50) NULL,
	[InsertedBy] [varchar](50) NULL,
	[InsertedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Fashion', N'SM', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Food', N'SM', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Books', N'SM', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'Furniture', N'SM', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [StatusId], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'John', N'Smith', 1, N'SM', CAST(N'2019-09-30T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [StatusId], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Helen', N'Anderson', 1, N'SM', CAST(N'2019-09-30T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [StatusId], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Rita', N'Jack', 2, N'SM', CAST(N'2019-09-30T00:00:00.000' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Item] ON 
GO
INSERT [dbo].[Item] ([ItemId], [CategoryId], [ItemName], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (100, 1, N'Polo Shirts', N'SM', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Item] ([ItemId], [CategoryId], [ItemName], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (101, 1, N'Pants', N'SM', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Item] ([ItemId], [CategoryId], [ItemName], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (102, 2, N'Cereal', N'SM', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Item] ([ItemId], [CategoryId], [ItemName], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (103, 4, N'Dining Table', N'SM', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Item] ([ItemId], [CategoryId], [ItemName], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (104, 1, N'T-Shirts', N'SM', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Item] ([ItemId], [CategoryId], [ItemName], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (105, 2, N'Apple', N'SM', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Item] ([ItemId], [CategoryId], [ItemName], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (106, 2, N'Orange', N'SM', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Item] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [OrderAmount], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, 1, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(1999.00 AS Numeric(18, 2)), N'SM', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [OrderAmount], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, 2, CAST(N'2019-03-09T00:00:00.000' AS DateTime), CAST(949.00 AS Numeric(18, 2)), N'SM', CAST(N'2019-03-09T00:00:00.000' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemId], [Quantity], [Amount], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, 1, 100, CAST(2.00 AS Numeric(18, 2)), CAST(899.00 AS Numeric(18, 2)), N'SM', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemId], [Quantity], [Amount], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, 1, 101, CAST(4.00 AS Numeric(18, 2)), CAST(1100.00 AS Numeric(18, 2)), N'SM', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemId], [Quantity], [Amount], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, 2, 103, CAST(1.00 AS Numeric(18, 2)), CAST(899.00 AS Numeric(18, 2)), N'SM', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemId], [Quantity], [Amount], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, 2, 106, CAST(10.00 AS Numeric(18, 2)), CAST(50.00 AS Numeric(18, 2)), N'SM', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 
GO
INSERT [dbo].[Status] ([StatusId], [StatusCode], [StatusDesc], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'ACTV', N'Active', N'SM', CAST(N'2019-09-30T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Status] ([StatusId], [StatusCode], [StatusDesc], [InsertedBy], [InsertedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'IACTV', N'Inactive', N'SM', CAST(N'2019-09-30T00:00:00.000' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Status]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Item_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Item]'))
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Item_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Item]'))
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Category]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order]'))
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order]'))
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetail_Item]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ItemId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetail_Item]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Item]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetail_Order]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetail_Order]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
