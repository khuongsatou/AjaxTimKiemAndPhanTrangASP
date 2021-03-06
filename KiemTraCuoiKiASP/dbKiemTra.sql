USE [dbKTra]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/16/2019 11:05:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](250) NULL,
	[HinhAnh] [nvarchar](250) NULL,
	[MoTa] [nvarchar](250) NULL,
	[Gia] [float] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (1, N'san pham 1', N'hinh (1).jpg', N'mo ta 1', 7)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (2, N'san pham 2', N'hinh (2).jpg', N'mo ta 2', 62)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (3, N'san pham 3', N'hinh (3).jpg', N'mo ta 3', 72)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (4, N'san pham 4', N'hinh (4).jpg', N'mo ta 4', 19)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (5, N'san pham 5', N'hinh (5).jpg', N'mo ta 5', 71)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (6, N'san pham 6', N'hinh (6).jpg', N'mo ta 6', 26)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (7, N'san pham 7', N'hinh (7).jpg', N'mo ta 7', 45)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (8, N'san pham 8', N'hinh (8).jpg', N'mo ta 8', 16)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (9, N'san pham 9', N'hinh (9).jpg', N'mo ta 9', 42)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (10, N'san pham 10', N'hinh (10).jpg', N'mo ta 10', 69)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (11, N'san pham 11', N'hinh (11).jpg', N'mo ta 11', 53)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (12, N'san pham 12', N'hinh (12).jpg', N'mo ta 12', 1)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (13, N'san pham 13', N'hinh (13).jpg', N'mo ta 13', 85)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (14, N'san pham 14', N'hinh (14).jpg', N'mo ta 14', 90)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (15, N'san pham 15', N'hinh (15).jpg', N'mo ta 15', 51)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (16, N'san pham 16', N'hinh (16).jpg', N'mo ta 16', 54)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (17, N'san pham 17', N'hinh (17).jpg', N'mo ta 17', 46)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (18, N'san pham 18', N'hinh (18).jpg', N'mo ta 18', 94)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (19, N'san pham 19', N'hinh (19).jpg', N'mo ta 19', 48)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (20, N'san pham 20', N'hinh (20).jpg', N'mo ta 20', 28)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (21, N'san pham 21', N'hinh (21).jpg', N'mo ta 21', 49)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (22, N'san pham 22', N'hinh (22).jpg', N'mo ta 22', 27)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (23, N'san pham 23', N'hinh (23).jpg', N'mo ta 23', 78)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (24, N'san pham 24', N'hinh (24).jpg', N'mo ta 24', 41)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (25, N'san pham 25', N'hinh (25).jpg', N'mo ta 25', 16)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (26, N'san pham 26', N'hinh (26).jpg', N'mo ta 26', 56)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (27, N'san pham 27', N'hinh (27).jpg', N'mo ta 27', 17)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (28, N'san pham 28', N'hinh (28).jpg', N'mo ta 28', 29)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (29, N'san pham 29', N'hinh (29).jpg', N'mo ta 29', 5)
INSERT [dbo].[SanPham] ([ID], [TenSP], [HinhAnh], [MoTa], [Gia]) VALUES (30, N'san pham 30', N'hinh (30).jpg', N'mo ta 30', 57)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
