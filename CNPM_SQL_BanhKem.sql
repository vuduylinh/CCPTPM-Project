USE [master]
GO
/****** Object:  Database [BANHKEM_BLN]    Script Date: 19/05/2021 1:44:19 PM ******/
CREATE DATABASE [BANHKEM_BLN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BANHKEM_BLN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BANHKEM_BLN.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BANHKEM_BLN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BANHKEM_BLN_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BANHKEM_BLN] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BANHKEM_BLN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BANHKEM_BLN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET ARITHABORT OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BANHKEM_BLN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BANHKEM_BLN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BANHKEM_BLN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BANHKEM_BLN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BANHKEM_BLN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BANHKEM_BLN] SET  MULTI_USER 
GO
ALTER DATABASE [BANHKEM_BLN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BANHKEM_BLN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BANHKEM_BLN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BANHKEM_BLN] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BANHKEM_BLN] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BANHKEM_BLN', N'ON'
GO
ALTER DATABASE [BANHKEM_BLN] SET QUERY_STORE = OFF
GO
USE [BANHKEM_BLN]
GO
/****** Object:  User [linh123]    Script Date: 19/05/2021 1:44:20 PM ******/
CREATE USER [linh123] FOR LOGIN [linh123] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [linh123]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 19/05/2021 1:44:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[Gia] [money] NULL,
	[SIZE] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [money] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 19/05/2021 1:44:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[Tongsotien] [money] NOT NULL,
	[TienKhachTra] [money] NOT NULL,
	[TienThoi] [money] NOT NULL,
	[MaNV] [int] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 19/05/2021 1:44:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[Size] [nvarchar](50) NULL,
	[GiaGoc] [money] NOT NULL,
	[MaNguyenLieu] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Trangthai] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[REPORT_CHITIETHOADON]    Script Date: 19/05/2021 1:44:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[REPORT_CHITIETHOADON] AS
SELECT cthd.MaHD as [SoHD] ,sp.TenSP as [Ten], sp.GiaGoc as [Gia],cthd.SoLuong as [SL], cthd.ThanhTien as [ThanhTien]
FROM ChiTietHoaDon cthd, HoaDon hd, SanPham sp
WHERE cthd.MaHD = hd.MaHD and cthd.MaSP = sp.MaSP
GO
/****** Object:  Table [dbo].[CaLamViec]    Script Date: 19/05/2021 1:44:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaLamViec](
	[MaCaLamViec] [int] IDENTITY(1,1) NOT NULL,
	[TenCaLamViec] [nvarchar](50) NULL,
	[GioBatDau] [time](7) NULL,
	[GioKetThuc] [time](7) NULL,
 CONSTRAINT [PK_Ca Lam Viec] PRIMARY KEY CLUSTERED 
(
	[MaCaLamViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 19/05/2021 1:44:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaCV] [int] IDENTITY(1,1) NOT NULL,
	[TenCV] [nvarchar](50) NULL,
	[Hesoluong] [float] NOT NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiNguyenLieu]    Script Date: 19/05/2021 1:44:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNguyenLieu](
	[MaLoaiNguyenLieu] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiNguyenLieu] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiNguyenLieu] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNguyenLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguyenLieu]    Script Date: 19/05/2021 1:44:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguyenLieu](
	[MaNguyenLieu] [int] IDENTITY(1,1) NOT NULL,
	[TenNguyenLieu] [nvarchar](50) NULL,
	[SoLuong] [int] NOT NULL,
	[MaNCC] [nvarchar](50) NOT NULL,
	[MaLoaiNguyenLieu] [int] NOT NULL,
	[Gia] [money] NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
	[NgayNhap] [date] NULL,
 CONSTRAINT [PK_NguyenLieu] PRIMARY KEY CLUSTERED 
(
	[MaNguyenLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 19/05/2021 1:44:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](50) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 19/05/2021 1:44:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[Email] [nvarchar](50) NULL,
	[CMND] [nvarchar](50) NOT NULL,
	[MaCaLamViec] [int] NOT NULL,
	[Matkhau] [nvarchar](50) NULL,
	[GioiTinh] [nchar](10) NULL,
	[Luongcoban] [money] NULL,
	[NgayGiaNhap] [datetime] NULL,
	[MaCV] [int] NOT NULL,
	[Trangthai] [nvarchar](50) NULL,
	[NgayNghi] [date] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CaLamViec] ON 

INSERT [dbo].[CaLamViec] ([MaCaLamViec], [TenCaLamViec], [GioBatDau], [GioKetThuc]) VALUES (1, N'07:30:00 - 11:30:00', CAST(N'07:30:00' AS Time), CAST(N'11:30:00' AS Time))
INSERT [dbo].[CaLamViec] ([MaCaLamViec], [TenCaLamViec], [GioBatDau], [GioKetThuc]) VALUES (2, N'12:30:00 - 15:30:00', CAST(N'12:30:00' AS Time), CAST(N'15:30:00' AS Time))
INSERT [dbo].[CaLamViec] ([MaCaLamViec], [TenCaLamViec], [GioBatDau], [GioKetThuc]) VALUES (3, N'16:30:00 - 19:30:00', CAST(N'16:30:00' AS Time), CAST(N'19:30:00' AS Time))
INSERT [dbo].[CaLamViec] ([MaCaLamViec], [TenCaLamViec], [GioBatDau], [GioKetThuc]) VALUES (4, N'20:30:00 - 23:30:00', CAST(N'20:30:00' AS Time), CAST(N'23:30:00' AS Time))
SET IDENTITY_INSERT [dbo].[CaLamViec] OFF
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (1, 10, 90000.0000, N'L', 1, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (1, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (1, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (2, 13, 125000.0000, N'L', 1, 125000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (3, 3, 52000.0000, N'M', 1, 52000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (3, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (4, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (4, 9, 83000.0000, N'M', 1, 83000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (5, 10, 90000.0000, N'L', 1, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (5, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (6, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (6, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (7, 3, 52000.0000, N'M', 1, 52000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (7, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (7, 10, 90000.0000, N'L', 1, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (7, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (8, 2, 72000.0000, N'L', 1, 72000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (8, 3, 52000.0000, N'M', 1, 52000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (8, 4, 65000.0000, N'M', 1, 65000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (8, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (8, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (8, 8, 75000.0000, N'L', 1, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (9, 2, 72000.0000, N'L', 1, 72000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (9, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (9, 8, 75000.0000, N'L', 1, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (10, 4, 65000.0000, N'M', 2, 130000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (10, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (10, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (11, 3, 52000.0000, N'M', 1, 52000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (11, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (11, 7, 67000.0000, N'M', 5, 335000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (12, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (12, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (12, 16, 375000.0000, N'L', 1, 375000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (13, 4, 235000.0000, N'M', 1, 235000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (13, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (13, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (14, 2, 90000.0000, N'L', 1, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (14, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (14, 9, 83000.0000, N'M', 1, 83000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (14, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (15, 16, 375000.0000, N'L', 3, 1125000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (16, 13, 255000.0000, N'L', 1, 255000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (16, 16, 375000.0000, N'L', 1, 375000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (16, 17, 230000.0000, N'M', 1, 230000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (17, 4, 235000.0000, N'M', 1, 235000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (17, 16, 375000.0000, N'L', 1, 375000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (17, 17, 230000.0000, N'M', 1, 230000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (18, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (18, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (18, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (19, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (19, 16, 375000.0000, N'L', 1, 375000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (19, 17, 230000.0000, N'M', 2, 460000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (20, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (20, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (20, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (20, 8, 145000.0000, N'L', 2, 290000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (20, 9, 83000.0000, N'M', 1, 83000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (20, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (21, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (21, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (21, 13, 255000.0000, N'L', 3, 765000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (21, 16, 375000.0000, N'L', 3, 1125000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (21, 17, 230000.0000, N'M', 2, 460000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (22, 16, 375000.0000, N'L', 1, 375000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (22, 17, 230000.0000, N'M', 1, 230000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (23, 4, 235000.0000, N'M', 1, 235000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (23, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (24, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (24, 13, 255000.0000, N'L', 1, 255000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (25, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (25, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (25, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (26, 16, 375000.0000, N'L', 1, 375000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (27, 1, 78000.0000, N'L', 1, 78000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (28, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (28, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (29, 4, 235000.0000, N'M', 1, 235000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (29, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (29, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (30, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (30, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (30, 9, 83000.0000, N'M', 1, 83000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (30, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (31, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (31, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (32, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (32, 16, 375000.0000, N'L', 1, 375000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (32, 17, 230000.0000, N'M', 1, 230000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (33, 3, 85000.0000, N'M', 1, 85000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (33, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (33, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (33, 9, 83000.0000, N'M', 1, 83000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (33, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (33, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (33, 13, 255000.0000, N'L', 1, 255000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (34, 4, 235000.0000, N'M', 1, 235000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (34, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (34, 8, 145000.0000, N'L', 1, 145000.0000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (34, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (34, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (35, 4, 235000.0000, N'M', 1, 235000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (35, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (35, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (35, 9, 83000.0000, N'M', 1, 83000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (35, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (36, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (36, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (36, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (36, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (37, 3, 85000.0000, N'M', 1, 85000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (37, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (37, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (37, 9, 83000.0000, N'M', 1, 83000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (38, 4, 235000.0000, N'M', 1, 235000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (38, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (38, 9, 83000.0000, N'M', 1, 83000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (38, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (39, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (39, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (39, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (39, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (40, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (40, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (41, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (41, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (41, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (42, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (42, 9, 83000.0000, N'M', 1, 83000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (42, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (42, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (43, 3, 85000.0000, N'M', 1, 85000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (44, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (44, 9, 83000.0000, N'M', 1, 83000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (44, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (44, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (45, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (45, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (45, 9, 83000.0000, N'M', 1, 83000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (46, 4, 235000.0000, N'M', 1, 235000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (46, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (46, 9, 83000.0000, N'M', 1, 83000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (46, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (47, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (47, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (47, 13, 255000.0000, N'L', 1, 255000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (48, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (48, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (48, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (49, 3, 85000.0000, N'M', 1, 85000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (49, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (49, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (49, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (50, 4, 235000.0000, N'M', 1, 235000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (50, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (50, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (50, 9, 83000.0000, N'M', 1, 83000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (50, 10, 170000.0000, N'L', 10, 1700000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (51, 2, 90000.0000, N'L', 1, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (51, 4, 235000.0000, N'M', 1, 235000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (51, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (51, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (51, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (52, 1, 78000.0000, N'L', 1, 78000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (52, 4, 235000.0000, N'M', 10, 2350000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (52, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (52, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (52, 9, 83000.0000, N'M', 1, 83000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (52, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (53, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (53, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (53, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (53, 16, 375000.0000, N'L', 1, 375000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (54, 9, 83000.0000, N'M', 1, 83000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (54, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (54, 13, 255000.0000, N'L', 1, 255000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (54, 16, 375000.0000, N'L', 1, 375000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (55, 3, 85000.0000, N'M', 1, 85000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (55, 4, 235000.0000, N'M', 1, 235000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (55, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (55, 8, 145000.0000, N'L', 2, 290000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (55, 9, 83000.0000, N'M', 1, 83000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (55, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (55, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (55, 16, 375000.0000, N'L', 1, 375000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (55, 17, 230000.0000, N'M', 1, 230000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (56, 3, 85000.0000, N'M', 1, 85000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (56, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (56, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (56, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (56, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (57, 4, 235000.0000, N'M', 1, 235000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (57, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (57, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (57, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (57, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (58, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (58, 16, 375000.0000, N'L', 10, 3750000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (58, 17, 230000.0000, N'M', 1, 230000.0000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (59, 4, 235000.0000, N'M', 1, 235000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (59, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (59, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (59, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (59, 9, 83000.0000, N'M', 1, 83000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (59, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (59, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (59, 13, 255000.0000, N'L', 1, 255000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (59, 16, 375000.0000, N'L', 1, 375000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 1, 78000.0000, N'L', 7, 546000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 2, 90000.0000, N'L', 13, 1170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 3, 85000.0000, N'M', 13, 1105000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 4, 235000.0000, N'M', 13, 3055000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 5, 60000.0000, N'L', 14, 840000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 6, 55000.0000, N'M', 13, 715000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 7, 67000.0000, N'M', 13, 871000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 8, 145000.0000, N'L', 14, 2030000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 9, 133000.0000, N'M', 13, 1729000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 10, 170000.0000, N'L', 14, 2380000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 11, 95000.0000, N'M', 13, 1235000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 12, 102000.0000, N'L', 13, 1326000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 13, 255000.0000, N'L', 13, 3315000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 14, 375000.0000, N'L', 14, 5250000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 15, 230000.0000, N'M', 13, 2990000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 16, 300000.0000, N'S', 14, 4200000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 17, 300000.0000, N'M', 13, 3900000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 18, 300000.0000, N'L', 13, 3900000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 19, 65000.0000, N'S', 14, 910000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 20, 120000.0000, N'S', 14, 1680000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 21, 340000.0000, N'M', 13, 4420000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 22, 400000.0000, N'L', 14, 5600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (60, 23, 230000.0000, N'S', 8, 1840000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (61, 4, 235000.0000, N'M', 1, 235000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (61, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (61, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (61, 14, 375000.0000, N'L', 1, 375000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (61, 16, 300000.0000, N'S', 1, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (61, 17, 300000.0000, N'M', 1, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (62, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (62, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (63, 4, 235000.0000, N'M', 3, 705000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (64, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (65, 5, 60000.0000, N'L', 2, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (65, 6, 55000.0000, N'M', 2, 110000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (66, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (66, 9, 133000.0000, N'M', 1, 133000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (66, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (67, 5, 60000.0000, N'L', 6, 360000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (67, 6, 55000.0000, N'M', 2, 110000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (67, 7, 67000.0000, N'M', 8, 536000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (67, 9, 133000.0000, N'M', 3, 399000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (67, 10, 170000.0000, N'L', 4, 680000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (67, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (67, 13, 255000.0000, N'L', 4, 1020000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (67, 15, 230000.0000, N'M', 5, 1150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (67, 16, 300000.0000, N'S', 2, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (67, 17, 300000.0000, N'M', 2, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (67, 18, 300000.0000, N'L', 4, 1200000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (68, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (68, 9, 133000.0000, N'M', 1, 133000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (68, 14, 375000.0000, N'L', 1, 375000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (69, 6, 55000.0000, N'M', 4, 220000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (69, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (70, 8, 145000.0000, N'L', 2, 290000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (70, 11, 95000.0000, N'M', 4, 380000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (70, 15, 230000.0000, N'M', 1, 230000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (71, 3, 85000.0000, N'M', 1, 85000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (71, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (71, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (71, 15, 230000.0000, N'M', 1, 230000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (71, 16, 300000.0000, N'S', 3, 900000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (71, 17, 300000.0000, N'M', 5, 1500000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (71, 18, 300000.0000, N'L', 3, 900000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (72, 9, 133000.0000, N'M', 2, 266000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (72, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (72, 15, 230000.0000, N'M', 1, 230000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (72, 16, 300000.0000, N'S', 1, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (72, 18, 300000.0000, N'L', 1, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (73, 8, 145000.0000, N'L', 2, 290000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (73, 12, 102000.0000, N'L', 2, 204000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (74, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (74, 15, 230000.0000, N'M', 1, 230000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (75, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (75, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (75, 12, 102000.0000, N'L', 2, 204000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (76, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (76, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (76, 15, 230000.0000, N'M', 1, 230000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (76, 25, 532000.0000, N'L', 1, 532000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (77, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (77, 9, 133000.0000, N'M', 1, 133000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (77, 13, 255000.0000, N'L', 1, 255000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (77, 14, 375000.0000, N'L', 1, 375000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (78, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (78, 9, 133000.0000, N'M', 1, 133000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (79, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (79, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (79, 13, 255000.0000, N'L', 1, 255000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (80, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (80, 10, 170000.0000, N'L', 1, 170000.0000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (81, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (81, 15, 230000.0000, N'M', 1, 230000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (82, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (82, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (83, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (83, 13, 255000.0000, N'L', 1, 255000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (84, 3, 85000.0000, N'M', 2, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (84, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (85, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (85, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (85, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (86, 9, 133000.0000, N'M', 1, 133000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (86, 13, 255000.0000, N'L', 1, 255000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (87, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (87, 13, 255000.0000, N'L', 1, 255000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (88, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (88, 9, 133000.0000, N'M', 1, 133000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (89, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (89, 16, 300000.0000, N'S', 1, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (90, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (90, 9, 133000.0000, N'M', 1, 133000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (91, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (91, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (91, 14, 375000.0000, N'L', 1, 375000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (92, 9, 133000.0000, N'M', 1, 133000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (92, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (93, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (94, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (94, 9, 133000.0000, N'M', 1, 133000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (95, 6, 55000.0000, N'M', 1, 55000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (95, 13, 255000.0000, N'L', 1, 255000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (96, 4, 235000.0000, N'M', 1, 235000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (96, 7, 67000.0000, N'M', 1, 67000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (97, 9, 133000.0000, N'M', 1, 133000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (97, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (98, 9, 133000.0000, N'M', 1, 133000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (98, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (99, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (100, 9, 133000.0000, N'M', 1, 133000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (100, 12, 102000.0000, N'L', 1, 102000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (101, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (101, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (102, 4, 235000.0000, N'M', 1, 235000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (103, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (103, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (103, 9, 133000.0000, N'M', 1, 133000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (104, 5, 60000.0000, N'L', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (104, 9, 133000.0000, N'M', 1, 133000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (105, 5, 60000.0000, N'L', 2, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (105, 9, 133000.0000, N'M', 1, 133000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (105, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (106, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (106, 15, 230000.0000, N'M', 1, 230000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (106, 17, 300000.0000, N'M', 1, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (107, 1, 78000.0000, N'L', 1, 78000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (107, 2, 90000.0000, N'L', 1, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (107, 3, 85000.0000, N'M', 1, 85000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (108, 9, 133000.0000, N'M', 1, 133000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (108, 11, 95000.0000, N'M', 1, 95000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (108, 15, 230000.0000, N'M', 1, 230000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (108, 16, 300000.0000, N'S', 1, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (109, 8, 145000.0000, N'L', 1, 145000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (109, 10, 170000.0000, N'L', 1, 170000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (109, 13, 255000.0000, N'L', 1, 255000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (110, 5, 60000.0000, N'L', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Gia], [SIZE], [SoLuong], [ThanhTien]) VALUES (110, 7, 67000.0000, N'M', 1, 67000.0000)
GO
SET IDENTITY_INSERT [dbo].[ChucVu] ON 

INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [Hesoluong]) VALUES (1, N'Admin', 4)
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [Hesoluong]) VALUES (2, N'Quản lý', 2)
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [Hesoluong]) VALUES (3, N'Bán hàng', 1.5)
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [Hesoluong]) VALUES (4, N'Kế toán', 2)
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (1, CAST(N'2020-11-06T13:43:27.000' AS DateTime), 287000.0000, 300000.0000, 13000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (2, CAST(N'2020-11-20T13:44:34.000' AS DateTime), 125000.0000, 200000.0000, 75000.0000, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (3, CAST(N'2020-11-21T13:44:45.000' AS DateTime), 119000.0000, 120000.0000, 1000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (4, CAST(N'2020-11-27T13:44:57.000' AS DateTime), 143000.0000, 150000.0000, 7000.0000, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (5, CAST(N'2020-11-28T13:45:12.000' AS DateTime), 192000.0000, 200000.0000, 8000.0000, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (6, CAST(N'2020-11-28T15:27:28.000' AS DateTime), 197000.0000, 200000.0000, 3000.0000, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (7, CAST(N'2020-11-28T18:28:43.000' AS DateTime), 311000.0000, 320000.0000, 9000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (8, CAST(N'2020-11-28T22:19:41.000' AS DateTime), 391000.0000, 400000.0000, 9000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (9, CAST(N'2020-11-28T22:20:01.000' AS DateTime), 207000.0000, 260000.0000, 53000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (10, CAST(N'2020-11-28T22:20:28.000' AS DateTime), 280000.0000, 290000.0000, 10000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (11, CAST(N'2020-11-28T22:21:07.000' AS DateTime), 447000.0000, 500000.0000, 53000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (12, CAST(N'2020-11-28T22:47:35.000' AS DateTime), 530000.0000, 600000.0000, 70000.0000, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (13, CAST(N'2020-11-28T22:48:00.000' AS DateTime), 440000.0000, 450000.0000, 10000.0000, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (14, CAST(N'2020-11-28T22:48:16.000' AS DateTime), 342000.0000, 350000.0000, 8000.0000, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (15, CAST(N'2020-11-28T22:49:04.000' AS DateTime), 1125000.0000, 1200000.0000, 75000.0000, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (16, CAST(N'2020-11-28T22:56:06.000' AS DateTime), 860000.0000, 900000.0000, 40000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (17, CAST(N'2020-11-28T22:56:27.000' AS DateTime), 840000.0000, 840000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (18, CAST(N'2020-11-28T22:56:48.000' AS DateTime), 410000.0000, 420000.0000, 10000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (19, CAST(N'2020-11-28T22:57:09.000' AS DateTime), 930000.0000, 930000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (20, CAST(N'2020-11-28T22:57:28.000' AS DateTime), 650000.0000, 650000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (21, CAST(N'2020-11-28T22:58:10.000' AS DateTime), 2547000.0000, 2600000.0000, 53000.0000, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (22, CAST(N'2020-11-28T22:58:36.000' AS DateTime), 605000.0000, 630000.0000, 25000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (23, CAST(N'2020-11-28T22:58:53.000' AS DateTime), 302000.0000, 310000.0000, 8000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (24, CAST(N'2020-11-28T22:59:09.000' AS DateTime), 350000.0000, 357000.0000, 7000.0000, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (25, CAST(N'2020-11-28T22:59:31.000' AS DateTime), 300000.0000, 300000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (26, CAST(N'2020-11-28T23:02:59.000' AS DateTime), 375000.0000, 375000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (27, CAST(N'2020-11-28T23:05:56.000' AS DateTime), 78000.0000, 80000.0000, 2000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (28, CAST(N'2020-11-28T23:07:44.000' AS DateTime), 127000.0000, 400000.0000, 273000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (29, CAST(N'2020-11-28T23:07:57.000' AS DateTime), 397000.0000, 400000.0000, 3000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (30, CAST(N'2020-11-28T23:11:07.000' AS DateTime), 390000.0000, 400000.0000, 10000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (31, CAST(N'2020-11-28T23:11:27.000' AS DateTime), 225000.0000, 300000.0000, 75000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (32, CAST(N'2020-11-28T23:11:42.000' AS DateTime), 707000.0000, 780000.0000, 73000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (33, CAST(N'2020-12-08T13:51:42.000' AS DateTime), 747000.0000, 750000.0000, 3000.0000, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (34, CAST(N'2020-12-08T13:53:56.000' AS DateTime), 707000.0000, 710000.0000, 3000.0000, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (35, CAST(N'2020-12-08T13:56:56.000' AS DateTime), 610000.0000, 620000.0000, 10000.0000, 4)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (36, CAST(N'2020-12-08T14:03:18.000' AS DateTime), 477000.0000, 480000.0000, 3000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (37, CAST(N'2020-12-08T14:03:29.000' AS DateTime), 368000.0000, 370000.0000, 2000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (38, CAST(N'2020-12-08T14:03:42.000' AS DateTime), 555000.0000, 555000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (39, CAST(N'2020-12-08T14:03:56.000' AS DateTime), 387000.0000, 400000.0000, 13000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (40, CAST(N'2020-12-08T14:47:23.000' AS DateTime), 127000.0000, 200000.0000, 73000.0000, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (41, CAST(N'2020-12-08T14:47:35.000' AS DateTime), 327000.0000, 330000.0000, 3000.0000, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (42, CAST(N'2020-12-08T14:47:54.000' AS DateTime), 403000.0000, 405000.0000, 2000.0000, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (43, CAST(N'2020-12-08T14:50:38.000' AS DateTime), 85000.0000, 100000.0000, 15000.0000, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (44, CAST(N'2020-12-08T14:52:48.000' AS DateTime), 403000.0000, 405000.0000, 2000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (45, CAST(N'2020-12-08T14:52:59.000' AS DateTime), 288000.0000, 300000.0000, 12000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (46, CAST(N'2020-12-08T14:53:10.000' AS DateTime), 558000.0000, 600000.0000, 42000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (47, CAST(N'2020-12-08T14:53:32.000' AS DateTime), 520000.0000, 520000.0000, 0.0000, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (48, CAST(N'2020-12-08T14:53:43.000' AS DateTime), 320000.0000, 320000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (49, CAST(N'2020-12-08T14:58:28.000' AS DateTime), 455000.0000, 455000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (50, CAST(N'2020-12-08T14:59:07.000' AS DateTime), 2218000.0000, 2228000.0000, 10000.0000, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (51, CAST(N'2020-12-08T14:59:22.000' AS DateTime), 735000.0000, 735000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (52, CAST(N'2020-12-08T15:01:04.000' AS DateTime), 2740000.0000, 2750000.0000, 10000.0000, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (53, CAST(N'2020-12-08T15:01:20.000' AS DateTime), 702000.0000, 750000.0000, 48000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (54, CAST(N'2020-12-08T15:01:37.000' AS DateTime), 815000.0000, 815000.0000, 0.0000, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (55, CAST(N'2021-01-08T15:46:48.000' AS DateTime), 1550000.0000, 1550000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (56, CAST(N'2021-01-08T15:47:06.000' AS DateTime), 562000.0000, 565000.0000, 3000.0000, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (57, CAST(N'2021-01-08T15:47:22.000' AS DateTime), 644000.0000, 645000.0000, 1000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (58, CAST(N'2021-01-08T15:47:52.000' AS DateTime), 4035000.0000, 4040000.0000, 5000.0000, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (59, CAST(N'2021-01-08T15:48:09.000' AS DateTime), 1492000.0000, 1500000.0000, 8000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (60, CAST(N'2021-01-08T16:18:10.000' AS DateTime), 55007000.0000, 55008000.0000, 1000.0000, 8)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (61, CAST(N'2021-01-08T16:31:52.000' AS DateTime), 1372000.0000, 1400000.0000, 28000.0000, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (62, CAST(N'2021-01-08T19:54:34.000' AS DateTime), 225000.0000, 500000.0000, 275000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (63, CAST(N'2021-01-08T19:55:32.000' AS DateTime), 705000.0000, 800000.0000, 95000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (64, CAST(N'2021-01-09T08:47:57.000' AS DateTime), 565000.0000, 600000.0000, 35000.0000, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (65, CAST(N'2021-01-09T20:32:28.000' AS DateTime), 230000.0000, 230000.0000, 0.0000, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (66, CAST(N'2021-01-09T20:33:22.000' AS DateTime), 295000.0000, 300000.0000, 5000.0000, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (67, CAST(N'2021-01-12T12:23:30.000' AS DateTime), 9437000.0000, 10000000.0000, 563000.0000, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (68, CAST(N'2021-01-13T13:21:41.000' AS DateTime), 575000.0000, 600000.0000, 25000.0000, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (69, CAST(N'2021-01-13T15:47:30.000' AS DateTime), 315000.0000, 340000.0000, 25000.0000, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (70, CAST(N'2021-01-13T16:56:30.000' AS DateTime), 900000.0000, 1000000.0000, 100000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (71, CAST(N'2021-01-13T16:57:19.000' AS DateTime), 3765000.0000, 4000000.0000, 235000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (72, CAST(N'2021-01-13T19:41:19.000' AS DateTime), 1191000.0000, 2000000.0000, 809000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (73, CAST(N'2021-01-16T12:25:47.000' AS DateTime), 494000.0000, 500000.0000, 6000.0000, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (74, CAST(N'2021-01-16T12:26:16.000' AS DateTime), 400000.0000, 400000.0000, 0.0000, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (75, CAST(N'2021-01-16T15:11:15.000' AS DateTime), 444000.0000, 500000.0000, 56000.0000, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (76, CAST(N'2021-01-16T15:13:16.000' AS DateTime), 987000.0000, 988000.0000, 1000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (77, CAST(N'2021-01-16T16:39:20.000' AS DateTime), 823000.0000, 900000.0000, 77000.0000, 12)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (78, CAST(N'2021-01-16T21:03:08.000' AS DateTime), 188000.0000, 200000.0000, 12000.0000, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (79, CAST(N'2021-01-16T21:07:39.000' AS DateTime), 405000.0000, 450000.0000, 45000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (80, CAST(N'2021-01-16T21:23:03.000' AS DateTime), 230000.0000, 230000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (81, CAST(N'2021-01-16T21:28:55.000' AS DateTime), 325000.0000, 400000.0000, 75000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (82, CAST(N'2021-01-16T21:29:15.000' AS DateTime), 162000.0000, 290000.0000, 128000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (83, CAST(N'2021-01-16T21:39:58.000' AS DateTime), 400000.0000, 400000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (84, CAST(N'2021-01-16T21:56:39.000' AS DateTime), 315000.0000, 326000.0000, 11000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (85, CAST(N'2021-01-16T21:57:07.000' AS DateTime), 410000.0000, 410000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (86, CAST(N'2021-01-16T21:57:25.000' AS DateTime), 388000.0000, 400000.0000, 12000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (87, CAST(N'2021-01-16T21:58:01.000' AS DateTime), 425000.0000, 500000.0000, 75000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (88, CAST(N'2021-01-16T21:58:25.000' AS DateTime), 188000.0000, 200000.0000, 12000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (89, CAST(N'2021-01-16T21:59:20.000' AS DateTime), 470000.0000, 470000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (90, CAST(N'2021-01-16T21:59:41.000' AS DateTime), 200000.0000, 200000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (91, CAST(N'2021-01-16T22:01:54.000' AS DateTime), 647000.0000, 6470000.0000, 5823000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (92, CAST(N'2021-01-16T22:02:19.000' AS DateTime), 228000.0000, 228000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (93, CAST(N'2021-01-16T22:03:21.000' AS DateTime), 67000.0000, 670000.0000, 603000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (94, CAST(N'2021-01-16T22:04:30.000' AS DateTime), 278000.0000, 278000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (95, CAST(N'2021-01-16T22:05:05.000' AS DateTime), 310000.0000, 310000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (96, CAST(N'2021-01-16T22:05:40.000' AS DateTime), 302000.0000, 302000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (97, CAST(N'2021-01-16T22:07:17.000' AS DateTime), 235000.0000, 235000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (98, CAST(N'2021-01-16T22:11:14.000' AS DateTime), 235000.0000, 235000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (99, CAST(N'2021-01-16T22:13:16.000' AS DateTime), 145000.0000, 145000.0000, 0.0000, 2)
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (100, CAST(N'2021-01-16T22:24:13.000' AS DateTime), 235000.0000, 236000.0000, 1000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (101, CAST(N'2021-01-16T22:24:58.000' AS DateTime), 315000.0000, 315000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (102, CAST(N'2021-01-16T22:25:23.000' AS DateTime), 235000.0000, 235000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (103, CAST(N'2021-01-16T22:25:58.000' AS DateTime), 338000.0000, 338000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (104, CAST(N'2021-01-16T22:26:26.000' AS DateTime), 193000.0000, 193000.0000, 0.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (105, CAST(N'2021-01-17T22:12:26.000' AS DateTime), 423000.0000, 432000.0000, 9000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (106, CAST(N'2021-01-17T22:41:40.000' AS DateTime), 625000.0000, 700000.0000, 75000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (107, CAST(N'2021-01-18T08:20:59.000' AS DateTime), 253000.0000, 300000.0000, 47000.0000, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (108, CAST(N'2021-01-29T15:52:59.000' AS DateTime), 758000.0000, 800000.0000, 42000.0000, 2)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (109, CAST(N'2021-05-19T13:41:28.000' AS DateTime), 570000.0000, 600000.0000, 30000.0000, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [Tongsotien], [TienKhachTra], [TienThoi], [MaNV]) VALUES (110, CAST(N'2021-05-19T13:42:08.000' AS DateTime), 247000.0000, 300000.0000, 53000.0000, 1)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiNguyenLieu] ON 

INSERT [dbo].[LoaiNguyenLieu] ([MaLoaiNguyenLieu], [TenLoaiNguyenLieu]) VALUES (1, N'Bột')
INSERT [dbo].[LoaiNguyenLieu] ([MaLoaiNguyenLieu], [TenLoaiNguyenLieu]) VALUES (2, N'Bơ')
INSERT [dbo].[LoaiNguyenLieu] ([MaLoaiNguyenLieu], [TenLoaiNguyenLieu]) VALUES (3, N'Trứng')
INSERT [dbo].[LoaiNguyenLieu] ([MaLoaiNguyenLieu], [TenLoaiNguyenLieu]) VALUES (4, N'Kem')
INSERT [dbo].[LoaiNguyenLieu] ([MaLoaiNguyenLieu], [TenLoaiNguyenLieu]) VALUES (5, N'Đường')
INSERT [dbo].[LoaiNguyenLieu] ([MaLoaiNguyenLieu], [TenLoaiNguyenLieu]) VALUES (6, N'Trái cây')
INSERT [dbo].[LoaiNguyenLieu] ([MaLoaiNguyenLieu], [TenLoaiNguyenLieu]) VALUES (7, N'Mật ông')
INSERT [dbo].[LoaiNguyenLieu] ([MaLoaiNguyenLieu], [TenLoaiNguyenLieu]) VALUES (8, N'Nước')
INSERT [dbo].[LoaiNguyenLieu] ([MaLoaiNguyenLieu], [TenLoaiNguyenLieu]) VALUES (9, N'Thạch')
SET IDENTITY_INSERT [dbo].[LoaiNguyenLieu] OFF
GO
SET IDENTITY_INSERT [dbo].[NguyenLieu] ON 

INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuong], [MaNCC], [MaLoaiNguyenLieu], [Gia], [TrangThai], [NgayNhap]) VALUES (1, N'Kem', 20, N'HD004', 1, 5000.0000, N'Còn hàng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuong], [MaNCC], [MaLoaiNguyenLieu], [Gia], [TrangThai], [NgayNhap]) VALUES (2, N'Phô Mai', 20, N'HD003', 4, 10000.0000, N'Còn hàng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuong], [MaNCC], [MaLoaiNguyenLieu], [Gia], [TrangThai], [NgayNhap]) VALUES (3, N'Đường', 20, N'HD002', 5, 10000.0000, N'Còn hàng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuong], [MaNCC], [MaLoaiNguyenLieu], [Gia], [TrangThai], [NgayNhap]) VALUES (4, N'Chocolate', 20, N'HD001', 4, 30000.0000, N'Còn hàng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuong], [MaNCC], [MaLoaiNguyenLieu], [Gia], [TrangThai], [NgayNhap]) VALUES (5, N'Bột mì', 20, N'HD001', 1, 12000.0000, N'Còn hàng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuong], [MaNCC], [MaLoaiNguyenLieu], [Gia], [TrangThai], [NgayNhap]) VALUES (6, N'Bột gạo', 20, N'HD001', 1, 30000.0000, N'Còn hàng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuong], [MaNCC], [MaLoaiNguyenLieu], [Gia], [TrangThai], [NgayNhap]) VALUES (7, N'Bột hạnh nhân', 20, N'HD001', 1, 18000.0000, N'Còn hàng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuong], [MaNCC], [MaLoaiNguyenLieu], [Gia], [TrangThai], [NgayNhap]) VALUES (8, N'Bột cacao', 20, N'HD001', 1, 20000.0000, N'Còn hàng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuong], [MaNCC], [MaLoaiNguyenLieu], [Gia], [TrangThai], [NgayNhap]) VALUES (9, N'Bơ nhạt', 20, N'HD002', 2, 18000.0000, N'Còn hàng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuong], [MaNCC], [MaLoaiNguyenLieu], [Gia], [TrangThai], [NgayNhap]) VALUES (10, N'Chanh', 20, N'HD002', 6, 23000.0000, N'Còn hàng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuong], [MaNCC], [MaLoaiNguyenLieu], [Gia], [TrangThai], [NgayNhap]) VALUES (11, N'Trứng gà', 200, N'HD003', 3, 2500.0000, N'Còn hàng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuong], [MaNCC], [MaLoaiNguyenLieu], [Gia], [TrangThai], [NgayNhap]) VALUES (12, N'Trứng cút', 20, N'HD003', 3, 500.0000, N'Còn hàng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuong], [MaNCC], [MaLoaiNguyenLieu], [Gia], [TrangThai], [NgayNhap]) VALUES (13, N'Mật ong', 10, N'HD002', 7, 56000.0000, N'Còn hàng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuong], [MaNCC], [MaLoaiNguyenLieu], [Gia], [TrangThai], [NgayNhap]) VALUES (14, N'Đường xay', 80, N'HD003', 5, 8000.0000, N'Còn hàng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuong], [MaNCC], [MaLoaiNguyenLieu], [Gia], [TrangThai], [NgayNhap]) VALUES (15, N'Đường nâu', 20, N'HD003', 5, 15000.0000, N'Còn hàng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuong], [MaNCC], [MaLoaiNguyenLieu], [Gia], [TrangThai], [NgayNhap]) VALUES (16, N'Muối', 35, N'HD004', 1, 2500.0000, N'Còn hàng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[NguyenLieu] ([MaNguyenLieu], [TenNguyenLieu], [SoLuong], [MaNCC], [MaLoaiNguyenLieu], [Gia], [TrangThai], [NgayNhap]) VALUES (17, N'Sữa tươi', 100, N'HD003', 8, 4000.0000, N'Còn hàng', CAST(N'2020-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[NguyenLieu] OFF
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [Email], [DiaChi], [SDT]) VALUES (N'HD001', N'Hoàng Diệu', N'hoangDieu@gmail.com', N'0857853697', N'102/23 Lê Văn Thọ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [Email], [DiaChi], [SDT]) VALUES (N'HD002', N'Tuyết Hạnh', N'THanh@gmail.com', N'184 Hoa Diệu 3', N'0977676413')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [Email], [DiaChi], [SDT]) VALUES (N'HD003', N'Nhà D2', N'TDung@gmail.com', N'102 Phan Văn trị', N'0977999943')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [Email], [DiaChi], [SDT]) VALUES (N'HD004', N'T-Mart', N'tmart@gmail.com', N'76 Võ Văn Ngân', N'0987445121')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [Email], [DiaChi], [SDT]) VALUES (N'HD005', N'Nhà D3', N'TDung@gmail.com', N'0877651239', N'102 Phan Văn trị')
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [NgaySinh], [Email], [CMND], [MaCaLamViec], [Matkhau], [GioiTinh], [Luongcoban], [NgayGiaNhap], [MaCV], [Trangthai], [NgayNghi]) VALUES (1, N'Phạm Trần Huy Bảo', N'0345999999', CAST(N'2000-01-17' AS Date), N'admin', N'0122334567', 1, N'1', N'Nam       ', 5000000.0000, CAST(N'2020-01-20T00:00:00.000' AS DateTime), 1, N'Đang hoạt động', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [NgaySinh], [Email], [CMND], [MaCaLamViec], [Matkhau], [GioiTinh], [Luongcoban], [NgayGiaNhap], [MaCV], [Trangthai], [NgayNghi]) VALUES (2, N'Vũ Duy Linh', N'0128350287', CAST(N'2000-02-16' AS Date), N'linh', N'0926333456', 2, N'12', N'Nam       ', 3000000.0000, CAST(N'2020-01-20T00:00:00.000' AS DateTime), 3, N'Đang hoạt động', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [NgaySinh], [Email], [CMND], [MaCaLamViec], [Matkhau], [GioiTinh], [Luongcoban], [NgayGiaNhap], [MaCV], [Trangthai], [NgayNghi]) VALUES (3, N'Đặng Thành Nhân', N'0122333444', CAST(N'2000-02-03' AS Date), N'nhan', N'0933268321', 3, N'12', N'Nam       ', 4000000.0000, CAST(N'2020-01-20T00:00:00.000' AS DateTime), 2, N'Đang hoạt động', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [NgaySinh], [Email], [CMND], [MaCaLamViec], [Matkhau], [GioiTinh], [Luongcoban], [NgayGiaNhap], [MaCV], [Trangthai], [NgayNghi]) VALUES (4, N'Trần Thị Ngọc Như', N'012276851', CAST(N'2000-02-23' AS Date), N'ngocnhu@gmail.com', N'023769451', 2, N'ngocnhu', N'Nữ        ', 3000000.0000, CAST(N'2020-08-24T00:00:00.000' AS DateTime), 3, N'Đang hoạt động', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [NgaySinh], [Email], [CMND], [MaCaLamViec], [Matkhau], [GioiTinh], [Luongcoban], [NgayGiaNhap], [MaCV], [Trangthai], [NgayNghi]) VALUES (5, N'Nguyễn Đỗ Anh Thư', N'0326090251', CAST(N'2000-03-17' AS Date), N'anhthu@gmail.com', N'032090277', 4, N'anhthu', N'Nữ        ', 4000000.0000, CAST(N'2020-02-27T00:00:00.000' AS DateTime), 2, N'Đang hoạt động', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [NgaySinh], [Email], [CMND], [MaCaLamViec], [Matkhau], [GioiTinh], [Luongcoban], [NgayGiaNhap], [MaCV], [Trangthai], [NgayNghi]) VALUES (6, N'Nguyễn Thị Hoa', N'0260377841', CAST(N'2000-04-17' AS Date), N'hoathi@gmail.com', N'026091248', 4, N'hoa123', N'Nữ        ', 3000000.0000, CAST(N'2020-03-14T00:00:00.000' AS DateTime), 3, N'Đã nghỉ việc', CAST(N'2020-12-06' AS Date))
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [NgaySinh], [Email], [CMND], [MaCaLamViec], [Matkhau], [GioiTinh], [Luongcoban], [NgayGiaNhap], [MaCV], [Trangthai], [NgayNghi]) VALUES (7, N'Lê Ngọc Phương Uyên', N'0772348234', CAST(N'2000-06-17' AS Date), N'phuonguyenk@gmail.com', N'0968432421', 3, N'phuonguyen', N'Nữ        ', 3000000.0000, CAST(N'2020-06-13T00:00:00.000' AS DateTime), 3, N'Đã nghỉ việc', CAST(N'2021-01-07' AS Date))
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [NgaySinh], [Email], [CMND], [MaCaLamViec], [Matkhau], [GioiTinh], [Luongcoban], [NgayGiaNhap], [MaCV], [Trangthai], [NgayNghi]) VALUES (8, N'Trần Thị Như Ý', N'0937471250', CAST(N'2000-08-17' AS Date), N'nhuy@gmail.com', N'0293602177', 3, N'nhuy2000', N'Nữ        ', 4000000.0000, CAST(N'2020-12-13T00:00:00.000' AS DateTime), 3, N'Đang hoạt động', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [NgaySinh], [Email], [CMND], [MaCaLamViec], [Matkhau], [GioiTinh], [Luongcoban], [NgayGiaNhap], [MaCV], [Trangthai], [NgayNghi]) VALUES (9, N'Lê Hoàng Long', N'0911771223', CAST(N'2000-09-19' AS Date), N'long@gmail.com', N'0326478911', 1, N'long', N'Nam       ', 4000000.0000, CAST(N'2020-04-04T00:00:00.000' AS DateTime), 4, N'Đang hoạt động', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [NgaySinh], [Email], [CMND], [MaCaLamViec], [Matkhau], [GioiTinh], [Luongcoban], [NgayGiaNhap], [MaCV], [Trangthai], [NgayNghi]) VALUES (10, N'Hoàng Ngô Kinh', N'0987675765', CAST(N'2000-02-16' AS Date), N'kinh@gmail.com', N'2345678908', 2, N'1234', N'Nữ        ', 500000.0000, CAST(N'2020-01-20T00:00:00.000' AS DateTime), 3, N'Đang hoạt động', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [NgaySinh], [Email], [CMND], [MaCaLamViec], [Matkhau], [GioiTinh], [Luongcoban], [NgayGiaNhap], [MaCV], [Trangthai], [NgayNghi]) VALUES (11, N'David Kenneth', N'0923193671', CAST(N'2000-02-16' AS Date), N'davil@gmail.com', N'026090277', 2, N'1', N'Nam       ', 4000000.0000, CAST(N'2020-01-20T00:00:00.000' AS DateTime), 3, N'Đang hoạt động', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [NgaySinh], [Email], [CMND], [MaCaLamViec], [Matkhau], [GioiTinh], [Luongcoban], [NgayGiaNhap], [MaCV], [Trangthai], [NgayNghi]) VALUES (12, N'Trần Thùy Dung', N'0872637709', CAST(N'2000-04-13' AS Date), N'thuydung', N'261458627', 1, N'111', N'Nữ        ', 7000000.0000, CAST(N'2021-01-16T00:00:00.000' AS DateTime), 3, N'Đang hoạt động', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [NgaySinh], [Email], [CMND], [MaCaLamViec], [Matkhau], [GioiTinh], [Luongcoban], [NgayGiaNhap], [MaCV], [Trangthai], [NgayNghi]) VALUES (13, N'Hồ Huy Hoàng', N'093888889', CAST(N'2000-01-17' AS Date), N'hoang@gmail.com', N'231648908', 1, N'123', N'Nam       ', 2000000.0000, CAST(N'2020-01-02T00:00:00.000' AS DateTime), 3, N'Đang hoạt động', NULL)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (1, N'Bánh Gato', N'L', 78000.0000, 5, 5, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (2, N'Bánh Tiramisu', N'L', 90000.0000, 12, 10, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (3, N'Bánh Gato', N'M', 85000.0000, 5, 5, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (4, N'Bánh Tiramisu', N'M', 235000.0000, 5, 5, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (5, N'Bánh Mousse', N'L', 60000.0000, 5, 5, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (6, N'Bánh Mousse.', N'M', 55000.0000, 6, 6, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (7, N'Bánh Kem Lạnh', N'M', 67000.0000, 7, 7, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (8, N'Bánh Kem Lạnh', N'L', 145000.0000, 8, 8, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (9, N'Bánh Cheesecake', N'M', 133000.0000, 9, 9, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (10, N'Bánh Cheesecake', N'L', 170000.0000, 6, 10, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (11, N'Bánh Red Velvet', N'M', 95000.0000, 11, 11, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (12, N'Bánh Red Velvet', N'L', 102000.0000, 12, 12, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (13, N'Bánh Kem Chocolate', N'L', 255000.0000, 4, 12, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (14, N'Bánh Kem Bắp', N'L', 375000.0000, 2, 9, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (15, N'Bánh Kem Bắp', N'M', 230000.0000, 2, 6, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (16, N'Bánh Colesso', N'S', 300000.0000, 2, 10, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (17, N'Bánh Colesso', N'M', 300000.0000, 2, 10, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (18, N'Bánh Colesso', N'L', 300000.0000, 2, 10, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (19, N'Bánh Gato', N'S', 65000.0000, 5, 10, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (20, N'Bánh Cheesecake', N'S', 120000.0000, 9, 10, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (21, N'Bánh Peptarin', N'M', 340000.0000, 7, 10, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (22, N'Bánh Peptarin', N'L', 400000.0000, 7, 10, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (23, N'Bánh Peptarin', N'S', 230000.0000, 7, 10, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (24, N'Bánh Kem Hạt Dẻ', N'M', 355000.0000, 9, 7, N'Đang hoạt động')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Size], [GiaGoc], [MaNguyenLieu], [Soluong], [Trangthai]) VALUES (25, N'Bánh Kem Hạt Dẻ', N'L', 532000.0000, 9, 7, N'Đang hoạt động')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[NguyenLieu]  WITH CHECK ADD  CONSTRAINT [FK_NguyenLieu_LoaiNguyenLieu] FOREIGN KEY([MaLoaiNguyenLieu])
REFERENCES [dbo].[LoaiNguyenLieu] ([MaLoaiNguyenLieu])
GO
ALTER TABLE [dbo].[NguyenLieu] CHECK CONSTRAINT [FK_NguyenLieu_LoaiNguyenLieu]
GO
ALTER TABLE [dbo].[NguyenLieu]  WITH CHECK ADD  CONSTRAINT [FK_NguyenLieu_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[NguyenLieu] CHECK CONSTRAINT [FK_NguyenLieu_NhaCungCap]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_CaLamViec] FOREIGN KEY([MaCaLamViec])
REFERENCES [dbo].[CaLamViec] ([MaCaLamViec])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_CaLamViec]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([MaCV])
REFERENCES [dbo].[ChucVu] ([MaCV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NguyenLieu] FOREIGN KEY([MaNguyenLieu])
REFERENCES [dbo].[NguyenLieu] ([MaNguyenLieu])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NguyenLieu]
GO
/****** Object:  StoredProcedure [dbo].[RP_CTHD]    Script Date: 19/05/2021 1:44:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[RP_CTHD]
@MaHD INT
AS
BEGIN
	SELECT cthd.MaHD as [MaHD], sp.TenSP as[Ten], cthd.SIZE as [Size],cthd.SoLuong as[SL],cthd.Gia as [Gia], cthd.ThanhTien as [ThanhTien]
	FROM ChiTietHoaDon cthd,HoaDon hd, NhanVien nv, SanPham sp
	WHERE cthd.MaHD = hd.MaHD and cthd.MaSP = sp.MaSP and hd.MaNV = nv.MaNV and cthd.MaHD = @MaHD
END
GO
USE [master]
GO
ALTER DATABASE [BANHKEM_BLN] SET  READ_WRITE 
GO
