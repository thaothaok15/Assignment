USE [master]
GO
/****** Object:  Database [cosmetic_3]    Script Date: 03/23/2022 15:57:13 ******/
CREATE DATABASE [cosmetic_3] ON  PRIMARY 
( NAME = N'cosmetic_3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\cosmetic_3.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'cosmetic_3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\cosmetic_3_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [cosmetic_3] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cosmetic_3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cosmetic_3] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [cosmetic_3] SET ANSI_NULLS OFF
GO
ALTER DATABASE [cosmetic_3] SET ANSI_PADDING OFF
GO
ALTER DATABASE [cosmetic_3] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [cosmetic_3] SET ARITHABORT OFF
GO
ALTER DATABASE [cosmetic_3] SET AUTO_CLOSE ON
GO
ALTER DATABASE [cosmetic_3] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [cosmetic_3] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [cosmetic_3] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [cosmetic_3] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [cosmetic_3] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [cosmetic_3] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [cosmetic_3] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [cosmetic_3] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [cosmetic_3] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [cosmetic_3] SET  ENABLE_BROKER
GO
ALTER DATABASE [cosmetic_3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [cosmetic_3] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [cosmetic_3] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [cosmetic_3] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [cosmetic_3] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [cosmetic_3] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [cosmetic_3] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [cosmetic_3] SET  READ_WRITE
GO
ALTER DATABASE [cosmetic_3] SET RECOVERY SIMPLE
GO
ALTER DATABASE [cosmetic_3] SET  MULTI_USER
GO
ALTER DATABASE [cosmetic_3] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [cosmetic_3] SET DB_CHAINING OFF
GO
USE [cosmetic_3]
GO
/****** Object:  Table [dbo].[Profile]    Script Date: 03/23/2022 15:57:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profile](
	[ProfileID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[Phone] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProfileID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Profile] ON
INSERT [dbo].[Profile] ([ProfileID], [Name], [Email], [Address], [Phone]) VALUES (1, N'Thanh Thao', N'thanhthao@gmail.com', N'Lai Chau', N'01212121212')
INSERT [dbo].[Profile] ([ProfileID], [Name], [Email], [Address], [Phone]) VALUES (2, N'Le Duc', N'DucLe@gmail.com', N'Thanh Hoa', N'035333323')
INSERT [dbo].[Profile] ([ProfileID], [Name], [Email], [Address], [Phone]) VALUES (3, N'Hoang Thao', N'hoangthithanhthao31082001@gmail.com', N'Hoa Binh', N'0387974042')
INSERT [dbo].[Profile] ([ProfileID], [Name], [Email], [Address], [Phone]) VALUES (4, N'Thanh Thanh', N'thanhthanh@gmail.com', N'Hai Phong', N'0338014211')
INSERT [dbo].[Profile] ([ProfileID], [Name], [Email], [Address], [Phone]) VALUES (5, N'thien', N'duck15@gmail.com', N'Ha Noi', N'0989355382a')
INSERT [dbo].[Profile] ([ProfileID], [Name], [Email], [Address], [Phone]) VALUES (6, N'Linh xinh', N'linhxinh@gmail.com', N'Ha Noi', N'0989024140')
SET IDENTITY_INSERT [dbo].[Profile] OFF
/****** Object:  Table [dbo].[Categories]    Script Date: 03/23/2022 15:57:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Son')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Mặt nạ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Kem dưỡng da')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'Sữa rửa mặt')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (5, N'Phấn')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (6, N'Sản phẩm khác')
SET IDENTITY_INSERT [dbo].[Categories] OFF
/****** Object:  Table [dbo].[Account]    Script Date: 03/23/2022 15:57:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[role] [int] NULL,
	[ProfileID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [ProfileID]) VALUES (1, N'thao', N'123456', 1, 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [ProfileID]) VALUES (4, N'thaothao', N'123', 0, 3)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [ProfileID]) VALUES (6, N'hoangthao', N'123', 0, 3)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [ProfileID]) VALUES (7, N'thaocute', N'12345', 0, 3)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [ProfileID]) VALUES (10, N'linh', N'123', 0, 6)
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 03/23/2022 15:57:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](250) NULL,
	[Description] [nvarchar](1000) NULL,
	[imageLink] [varchar](250) NULL,
	[Status] [nvarchar](1000) NULL,
	[quantity] [int] NULL,
	[oldPrice] [int] NULL,
	[CategoryID] [int] NULL,
	[salePrice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (6, N'Mặt nạ Vita Genic', N' Mặt nạ có 4 loại:Vita Genic Lifting Jelly Mask (Vitamin A) - màu đỏ: tác dụng nâng cơ, săn chắc da. Bổ sung Vitamin A hàm lượng 20.000ppm được chiết xuất cây xương rồng tại đảo Jeju Hàn Quốc, giúp nâng cơ, chống chảy xệ.Vita Genic Relaxing Mask (Vitamin B) - màu xanh lá: tác dụng thư giãn, phục hồi làn da mệt mỏi. Bổ sung Vitamin B hàm lượng 20.000ppm được chiết xuất cây lô hội tại đảo Jeju Hàn Quốc, giúp phục hồi da xỉn màu.Vita Genic Hydrating Mask (Vitamin E) - màu xanh dương: tác dụng cấp ẩm tức thì cho làn da thiếu nước. Bổ sung Vitamin E hàm lượng 20.000ppm được chiết xuất từ nguồn nước khoáng tại đảo Jeju Hàn Quốc, giúp da căng mọng rạng rỡ.   ', N'./assets/img/product/MatnaVitaGenic.jpg', N'Mặt Nạ Bổ Sung Vitamin thần thánh Victa Genic BANOBAGI 30ml.Xuất xứ: Hàn Quốc.au khi bạn ý lên sóng Get it beauty thì các bạn Hàn, Nhật, Trung và Thái nháo nhào đặt hàng nhé. Mặt nạ Banobagi không phải là loại mặt nạ thông thường mà là mặt nạ cung cấp vitamin dạng gel, được bệnh viện thẩm mỹ Banobagi (1 thương hiệu bệnh viện thẩm mỹ lớn có uy tín tại Hàn Quốc) làm ra. Thương hiệu bệnh viện thẩm mỹ Banobagi này đã nổi tiếng & có trụ sở tại nhiều nước. ', 20, 450000, 2, 420000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (7, N'Kem dưỡng ẩm Neutrogena', N'Glycerin dưỡng ẩm và làm mềm da, chống oxy hóa và ngăn ngừa quá trình lão hóa da giúp da khỏe mạnh và đàn hồi tốt.Thành phần Hyaluronic Acid cung cấp nước và khóa ẩm từ bên trong da, giúp da luôn đầy đủ độ ẩm và đầy sức sống, da ngậm nước, mềm mại, mịn màng trong suốt 72 giờ.Chất kem dạng gel mỏng nhẹ và mịn dễ thẩm thấu, không gây bết dính, không gây bít tắc lỗ chân lông.Khóa ẩm giúp da luôn duy trì được trạng thái ngậm nước, mềm mại mịn màng trong suốt 48 giờ.', N'./assets/img/product/KemduongamNeutrogena.jpg', N'Kem Dưỡng Ẩm Neutrogena Cung Cấp Nước Cho Da Hydro Boost Water Gel 15g là dòng kem dưỡng đến từ thương hiệu mỹ phẩm Neutrogena của Mỹ, kết cấu dạng gel dễ dàng thẩm thấu vào da cung cấp dưỡng chất thiết yếu cho da giúp da ẩm mượt, mịn màng, căng mướt, da căng ngậm nước giúp da đủ ẩm cả một ngày dài. Hiện sản phẩm Kem Dưỡng Ẩm Neutrogena Cung Cấp Nước Cho Da Hydro Boost Water Gel 15g đã có mặt tại Hasaki.', 20, 270000, 3, 265000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (8, N'Kem dưỡng ẩm Laneige', N'Kem dưỡng ẩm dạng gel giúp kích thích các thành phần dưỡng ẩm sâu trong da để tăng cường sự sản xuất ẩm đồng thời củng cố khả năng dưỡng ẩm tự nhiên của làn da.Nước chứa các ion khoáng chất “Hydro-Ion Mineral Water”.Kem dưỡng ẩm giúp da duy trì độ ẩm trong suốt 24 giờ đồng hồ bằng Công nghệ khoá ẩm độc quyền.Chiết xuất “Hydro Fresh Matrix”  (tinh chất chiết xuất từ hoa quả tươi sống Ma-rốc) giúp tăng cường khả năng tái tạo độ ẩm tự nhiên của da đồng thời củng cố hàng rào bảo vệ da, mang lại cảm giác thư giãn, thoải mái suốt cả ngày.', N'./assets/img/product/KemduongamLaneige.jpg', N'Được hình thành từ 6 loại khoáng chất cần thiết cho làn da, nước chứa các ion khoáng chất “Hydro Ion Mineral Water” dễ dàng thẩm thấu vào sâu bên trong giúp tăng cường khả năng tự tạo độ ẩm của làn da bằng cách kích hoạt các genes dưỡng ẩm.Giúp dưỡng ẩm sâu cho da.', 20, 250000, 3, 230000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (9, N'Kem dưỡng ẩm Innisfree', N'Kem Dưỡng Trắng Da Nâng Tone Tức Thì Innisfree Jeju Cherry Blossom Tone Up Cream.Là dòng kem dưỡng trắng da vừa mới ra mắt vào đầu 2019 đến từ thương hiệu mỹ phẩm Innisfree. Sản phẩm có tác dụng tuyệt vời trong việc hỗ trợ nâng tone da, giúp cải thiện tông da trắng sáng và bổ sung lượng ẩm cần thiết. Sản phẩm có thành phần thuần tự nhiên phù hợp với mọi làn da sử dụng.Kem dưỡng chiết xuất từ hoa anh đào có dụng nuôi dưỡng làn da tươi sáng, tinh khiết và duy trì sự mịn màng căng tràn sức sống.', N'./assets/img/product/KemduongamInnisfree.jpg', N'Kem dưỡng jeju Cherry Blossom Tone Up Cream cung cấp dưỡng chất hoa anh đào có tác dụng tuyệt vời giúp tăng cường sự tươi sáng, nâng tone da và hỗ trợ giúp dưỡng đều màu da.Kem dưỡng giàu betaine tự nhiên, có tác phục hồi sự tổn thương, làm chậm quá trình oxy hóa.', 20, 390000, 3, 289000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (10, N'Sữa rửa mặt Corx', N'Gel rửa mặt có độ pH thấp 4.5 - 5.5 không khô căng da sau khi rửa mặt.Gel rửa mặt COSRX độ pH thấp tốt cho buổi sáng chứa 0.5% BHA giúp làm sạch da nhẹ nhàng, không gây kích ứng da.Tinh dầu trà xanh và 0.5% BHA (Betaine Salicylate) kháng khuẩn, hỗ trợ làm sạch mụn, tẩy da chết, làm sạch lỗ chân lông.', N'./assets/img/product/SuaruamatCorx.jpg', N'Gel rửa mặt COSRX chiết xuất trà xanh độ pH thấp tốt cho buổi sáng 150ml/50ml/50mlx2 chai (set).Nước, Cocamidopropyl Betaine, Sodium Lauroyl Methyl Isethionate, Polysorbate 20, Chiết xuất từ cành quả và lá Styrax japonicus, Butylene Glycol, Saccharomyces Ferment, Chiết xuất lá Cryptomeria Japonica, Chiết xuất lá Nelumbo Nucifera, Chiết xuất lá Pinus Palustris, Chiết xuất rễ Ulmus Davidiana, Chiết xuất rễ Oenothera, Chiết xuất rễ Oenothera, Chiết xuất rễ Oenothera (Hoa anh thảo) Chiết xuất hoa, Chiết xuất rễ Pueraria Lobata, Dầu lá tràm trà (Tràm trà), Allantoin, Caprylyl Glycol, Ethylhexylglycerin, Betaine Salicylate, Axit xitric, Ethyl Hexanediol, 1,2-Hexanediol, Trisodium Ethylenediamine Disuccinate, Natri Benzoat Disodium EDTA', 20, 180000, 4, 167000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (11, N'Sữa rửa mặt Cetaphil', N'Sữa rửa dịu nhẹ hiệu quả không xà phòng. Cetaphil Gentle Skin Cleanser có công thức không xà phòng đã đạt được nhiều giải thưởng trong lĩnh vực làm đẹp và chăm sóc sức khỏe. Với tính chất dịu nhẹ, không gây kích ứng, sản phẩm có tác dụng làm sạch da một cách an toàn. Cetaphil Gentle Skin Cleanser có công thức phù hợp cho mọi loại da, kể cả da em bé.', N'./assets/img/product/SuaruamatCetaphil.jpg', N'SỮA RỬA MẶT CETAPHIL Gentle Skin Cleanser Làm Sạch Dịu Nhẹ cho Da Nhạy Cảm 500ml/125ml.Xuất xứ: Canada', 20, 350000, 4, 320000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (12, N'Sữa rửa mặt Cerave', N'Sữa rửa mặt Cerave Foaming Facial Cleanser 355ml là dòng sản phẩm sữa rửa mặt được khuyên dùng hàng ngày bởi độ dịu nhẹ cũng như khả năng làm sạch tuyệt vời của sản phẩm.Độ pH ở mức tốt xấp xỉ 5.5, Cerave Foaming Facial Cleanser 355ml có công thức không gây mụn, không làm tắc nghẽn lỗ chân lông và không chứa hương liệu, tín đồ có thể yên tâm khi sử dụng.Với sữa rửa mặt Cerave Foaming Facial Cleanser, các chức năng bảo vệ tự nhiên của da được phục hồi và duy trì, hạn chế được tình trạng vi khuẩn xâm nhập vào da, tránh tình trạng gây mụn và kích ứng, làn da sạch nhưng vẫn mềm mịn, không hề căng rát như những sản phẩm có độ pH cao.', N'./assets/img/product/SuaruamatCerave.jpg', N'Sữa rửa mặt Cerave Foaming Facial Cleanser 355ml được phát triển bởi các bác sĩ da liễu tại Mỹ đã được cập nhật tại hệ thống mỹ phẩm chính hãng Beauty Garden. Sản phẩm được khuyên dùng hàng ngày vì độ dịu nhẹ cũng như khả năng làm sạch da lý tưởng, đầy đủ cho làn da thường đến dầu, từ thường đến khô cho mọi bạn gái yêu thích Cerave.', 20, 400000, 4, 389000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (13, N'Phấn phủ Innisfree', N'Phấn phủ hiệu chỉnh tone màu da tự nhiên và che phủ các loại khuyết điểm khác nhau như hiệu ứng camera kỳ diệu: Màu tím (Violet): Da xỉn màu, sắc tố vàng, tối màu. Màu xanh lá (Green): Da mụn, có sắc đỏ.Màu hồng (Pink): Da tái, thiếu sức sống.', N'./assets/img/product/PhanphuInnisfree.jpg', N'PHẤN PHỦ CÓ MÀU KIỀM DẦU DẠNG BỘT INNISFREE NO SEBUM MINERAL COLOR POWDER 5G.Phấn phủ dạng bột innisfree No Sebum Mineral Color Powder có màu, kiềm dầu và hiệu chỉnh các khuyết điểm cho lớp nền hoàn hảo.', 20, 220000, 5, 205000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (14, N'Phấn phủ Gucci', N'Phấn phủ Guucci với chất phấn matte mỏng , che phủ các khuyết điểm và lcl vừa đủ cho da có lớp nền mịn màng, đặc biệt em này có bột lamellar tạo hiệu ứng bắt sáng trên da , tạo cho da độ glow nhẹ ưng lắm nghen.Packaging : thật sự cưnggg , hộp tròn màu hồng nude viền gold rất sang, gồm tầng phấn và tầng bông dặm phấn , kèm cả một túi đựng cũng màu hồng nude xinh xắn luôn', N'./assets/img/product/PhanphuGucci.jpg', N'Phấn Phủ Gucci Poudre De Beauté Màu Mat Naturel #00 vừa mới ra mắt 2020. Phấn phủ dạng nén Gucci là một loại phấn phủ kiềm dầu làm mịn với hiệu ứng lì trên da. Phấn Gucci Vỏ trắng kem có tới 12 sắc thái cho dòng phấn phủ này. Poudre De Beaute Mat Naturel 00 là màu dành cho da trắng sáng ,sẽ tạo ra một làn da hoàn hảo.', 20, 600000, 5, 578000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (15, N'Phấn phủ 3CE', N'Hãng 3CE đã cho ra mắt nhiều loại phấn phủ thích hợp với nhiều tone da và đa dạng phong cách make up, giúp thoả mãn nhu cầu làm đẹp của các chị em. Sau đây là 4 dòng phấn phủ 3CE nổi bật của hãng được nhiều chị em tin dùng và đánh giá cao.Phấn phủ 3CE Natural Finish Loose Powder dạng bột có thiết kế đơn giản, trẻ trung. Nắp hộp chất liệu nhựa lì, chắc chắn, tránh dính bẩn khi sử dụng thời  gian dài. Phần đựng phấn bằng nhựa trong suốt giúp nhìn rõ lượng sản phẩm bên trong.Đi kèm mỗi hộp phấn là một bông phấn vừa tay có lông mềm mịn, mật độ lông vừa phải giúp lấy ra lượng phấn vừa phải, tránh lãng phí. Chất phấn mịn, hạt nhỏ, khi thoa lên sẽ không gây bí bách, cộm da, giúp kiểm soát dầu, khóa lớp nền lâu trôi nhưng vẫn giữ được sự mịn màng, tự nhiên.', N'./assets/img/product/Phanphu3CE.jpg', N'Chất phấn với các hạt siêu mịn, giúp lớp phủ mỏng nhẹ, tệp da, không gây bí da, cộm phấn. Giữ lớp trang điểm luôn trong veo tự nhiên. Khả năng kiềm dầu rất tốt, ngăn tiết mồ hôi, giúp lớp nền lâu trôi, bền màu suốt thời gian dài.', 20, 500000, 5, 450000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (16, N'Phấn mắt 3CE', N'  Đây là bảng trang điểm 7 màu của Focallure! Sự kết hợp màu sắc được lựa chọn cẩn thận, phù hợp với nhiều dịp khác nhau, một bảng màu để hoàn thành toàn bộ lớp trang điểm!Bảng trang điểm đa năng, có ba phần để hoàn thiện vẻ ngoài của bạn: phấn mắt, má hồng và phấn bắt sáng. 4 sắc thái để lựa chọn, mỗi màu là một bảng màu khác nhau, vì vậy bạn có thể dễ dàng giải quyết vấn đề phối màu', N'./assets/img/product/Phanmat3CE.jpg', N'PHẤN MẮT: Sử dụng với cọ thoa yêu thích của bạn. Cọ phẳng và cứng hơn sẽ mang lại nhiều màu sắc nhất. Cọ mềm rất thích hợp để pha trộn. Dùng cọ góc nhỏ để kẻ viền mắt', 20, 145000, 6, 130000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (17, N'Kẻ mắt', N'Thiết kế bút kẻ mắt hình trụ tròn với màu hồng gold chủ đạo vừa sang trọng vừa trẻ trungThân bút được thiết kế như một cây bút máy, kết cấu có hệ thống bình mực trải dài giữa thân bút, để mực luôn được phân phối đều cho đầu bút không bao giờ bị khô.Lemonade lựa chọn màu đen tuyền để nét vẽ có chiều sâu từ đầu đến đuôi mắt, giúp đôi mắt mạnh mẽ, linh động, đen cũng là màu sắc dễ dùng và phù hợp cho tất cả mọi người.Waterproof - công nghệ kháng nước, kháng lem tuyệt đối, cho độ bền màu và lâu trôi đến 24h.', N'./assets/img/product/Kemat.jpg', N'Kẻ mắt là sản phẩm dùng màu vẽ lên vùng quanh mắt để tạo điểm nhấn và làm nổi bật vẻ ngoài của đôi mắt. Kẻ mắt được sử dụng để nhấn mạnh mí mắt hoặc để thay đổi đường nét của đôi mắt. Chúng chứa các thành phần đặc biệt giúp tạo màu ở những nơi cần thiết một cách chính xác và có kiểm soát. ', 20, 130000, 6, 125000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (18, N'Tonner Klairs', N'Thành phần chiết xuất từ thực vật giúp cân bằng độ pH của da.Giúp se khít lỗ chân lông.Hỗ trợ cải thiện hiệu quả chăm sóc da ở các bước tiếp theo, giúp làn da của bạn hấp thụ serum hay kem dưỡng tốt hơn.', N'./assets/img/product/TonnerKlairs.jpg', N'Nước Hoa Hồng Không Mùi Klairs Dành Cho Da Nhạy Cảm.Thương hiệu Klairs.', 20, 290000, 6, 265000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (19, N'Nước tẩy trang Simple', N'Sản phẩm có ngoại hình khá giống với thiết kế của em Simple Daily Skin Detox Oil Be Gone Micellar khi sở hữu bao bì khá đơn giản với vỏ nhựa có nắp màu xanh da trời.Được xem là best-seller của hãng kể từ khi ra mắt, Simple Water Boost Cleansing Micellar Water là cái tên khá quen thuộc với người dùng có làn da nhạy cảm và da khô. Không cồn, không hương liệu, không dầu khoáng, sản phẩm thực sự an toàn, lành tính, không gây nhờn và khả năng cấp ẩm tốt. Với công nghệ Micellar water đột phá và Glycerin trong bảng thành phần, sản phẩm không những loại bỏ hầu hết bụi bẩn và lớp trang điểm không gây hiện tượng khô rát mà còn có khả năng cấp ẩm cho da, mang đến làn da mịn màng, sạch khỏe.', N'./assets/img/product/NuoctaytrangSimple.jpg', N'Nước Tẩy Trang Simple Micellar Cleansing Water là sản phẩm làm sạch dịu nhẹ nhưng tiên tiến nhất của chúng tôi cho đến nay. Giúp loại bỏ các tạp chất gây gây kích ứng da. cho làn da sạch thoáng & tươi mát. Sản phẩm cũng giúp tăng cường 90% độ ẩm cho da!', 20, 420000, 6, 400000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (20, N'Tonner La Roche Posay', N'Nước cân bằng giàu khoáng dành cho da dầu La Roche Posay Effaclar Astringent Lotion 200ml với thành phần chính từ nước khoáng thiên nhiên, không chứa các thành phần độc hại, làm dịu mát da và chống tại các tác nhân gây lão hóa. Sản phẩm giúp cân bằng độ pH, cấp ẩm cho da mềm mại. La Roche Posay Effaclar Astringent Lotion còn là giải pháp làm sạch sâu đến tận lỗ chân lông, ngăn chặn sự tích tụ bã nhờn cùng dầu thừa và giảm thiểu tình trạng tắc nghẽn lỗ chân lông gây nên mụn. Sản phẩm an toàn, phù hợp cho những bạn có làn da dầu nhạy cảm, khó chọn Toner. ', N'./assets/img/product/TonnerLaRochePosay.jpg', N'Bộ sản phẩm nước cân bằng giúp se khít lỗ chân lông và làm sạch sâu La Roche-Posay Effaclar Toner  được chiết xuất từ các thành phần thiên nhiên lành tính cung cấp độ ẩm cho làn da, chống lại các tác nhân gây lão hóa cùng với nước tẩy trang giàu khoáng mang lại hiệu quả làm sạch sâu lớp trang điểm, bụi bẩn bám trên da. Bộ sản phẩm an toàn, phù hợp cho mọi làn da, đặc biệt là da dầu, nhạy cảm. ', 20, 670000, 6, 500000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (22, N'Son Bbiaa', N'Son Kem Lì Siêu Mịn Bbia Velvet Lip Tint Version 5.', N'./assets/img/product/Son-Bbia.jpg', N'#22 Crystallization of Melo là màu cam nude khá đặc biệt, nó được tạo nên bởi sự kết hợp giữa màu cam và màu be. Màu son Bbia Last Velvet Lip Tint Version 5 22 này rất dễ mix với các màu khác nhau để mang đến một màu sắc mới lạ cho bạn.', 20, 160000, 1, 155000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (23, N'Son 3CE', N'Son 3CE Bitter hour thuộc phiên bản Velvet lip tint.', N'./assets/img/product/Son-Dior.jpg', N'Son Kem Lì, Lên Màu Chuẩn 3CE Velvet Lip Tint là son kem lì thuộc thương hiệu 3CE có chất son cực kì mướt, lướt nhẹ nhàng độ lên màu chuẩn với lớp son cuối trên môi mịn màng như nhung, không gây lộ vân môi. Mặc dù là son lì, bảng màu son bao gồm 10 tông màu trải dài từ các tông màu nude, màu trầm đến các tông màu tươi sáng, rực rỡ. Đây đều là những màu son thời thượng luôn được các tin đồ làm đẹp săn đón.', 15, 250000, 1, 240000)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [imageLink], [Status], [quantity], [oldPrice], [CategoryID], [salePrice]) VALUES (24, N'Son Merzy', N'[V1-V12][Vỏ đen] Son Kem Lì Merzy Another Me The First Velvet Tint 4,5g là son kem lì có xuất xứ từ Hàn Quốc, sản phẩm có chất kem cực mịn cộng với bảng màu son lên màu cực chuẩn, hứa hẹn đem đến cho bạn đôi môi xinh xắn quyến rũ trong suốt nhiều giờ, cùng chất son vượt trội độ lên màu chuẩn, chất son mịn mướt không hề làm biến màu hay lộ vân môi.', N'./assets/img/product/Son-Merzy.jpg', N'Son kem siêu lì, siêu mịn Hàn Quốc Merzy The First Velvet Tint.', 20, 220000, 1, 200000)
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[Orders]    Script Date: 03/23/2022 15:57:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](250) NULL,
	[AccountID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT [dbo].[Orders] ([OrderID], [Address], [AccountID]) VALUES (42, N'Pa Khoa', 7)
INSERT [dbo].[Orders] ([OrderID], [Address], [AccountID]) VALUES (43, N'Ha Nam', 7)
INSERT [dbo].[Orders] ([OrderID], [Address], [AccountID]) VALUES (44, N'', 7)
INSERT [dbo].[Orders] ([OrderID], [Address], [AccountID]) VALUES (45, N'Hai Phong', 7)
INSERT [dbo].[Orders] ([OrderID], [Address], [AccountID]) VALUES (46, N'Ninh Binh', 7)
SET IDENTITY_INSERT [dbo].[Orders] OFF
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 03/23/2022 15:57:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NULL,
	[Total] [int] NULL,
	[ProductID] [int] NULL,
	[OrderID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON
INSERT [dbo].[OrderDetails] ([OrderDetailsID], [Quantity], [Total], [ProductID], [OrderID]) VALUES (35, 3, 150000, 17, 42)
INSERT [dbo].[OrderDetails] ([OrderDetailsID], [Quantity], [Total], [ProductID], [OrderID]) VALUES (36, 1, 230000, 8, 43)
INSERT [dbo].[OrderDetails] ([OrderDetailsID], [Quantity], [Total], [ProductID], [OrderID]) VALUES (37, 1, 289000, 9, 44)
INSERT [dbo].[OrderDetails] ([OrderDetailsID], [Quantity], [Total], [ProductID], [OrderID]) VALUES (38, 1, 578000, 14, 45)
INSERT [dbo].[OrderDetails] ([OrderDetailsID], [Quantity], [Total], [ProductID], [OrderID]) VALUES (39, 1, 167000, 10, 46)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
/****** Object:  ForeignKey [FK__Account__Profile__0519C6AF]    Script Date: 03/23/2022 15:57:14 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([ProfileID])
REFERENCES [dbo].[Profile] ([ProfileID])
GO
/****** Object:  ForeignKey [FK__Product__Categor__1273C1CD]    Script Date: 03/23/2022 15:57:14 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
/****** Object:  ForeignKey [FK__Orders__AccountI__09DE7BCC]    Script Date: 03/23/2022 15:57:14 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
/****** Object:  ForeignKey [FK__OrderDeta__Order__182C9B23]    Script Date: 03/23/2022 15:57:14 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
/****** Object:  ForeignKey [FK__OrderDeta__Produ__173876EA]    Script Date: 03/23/2022 15:57:14 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
