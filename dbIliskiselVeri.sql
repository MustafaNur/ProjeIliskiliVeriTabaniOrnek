USE [master]
GO
/****** Object:  Database [proje]    Script Date: 9.07.2023 20:29:21 ******/
CREATE DATABASE [proje]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'proje', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\proje.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'proje_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\proje_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [proje] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [proje].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [proje] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [proje] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [proje] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [proje] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [proje] SET ARITHABORT OFF 
GO
ALTER DATABASE [proje] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [proje] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [proje] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [proje] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [proje] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [proje] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [proje] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [proje] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [proje] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [proje] SET  DISABLE_BROKER 
GO
ALTER DATABASE [proje] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [proje] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [proje] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [proje] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [proje] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [proje] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [proje] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [proje] SET RECOVERY FULL 
GO
ALTER DATABASE [proje] SET  MULTI_USER 
GO
ALTER DATABASE [proje] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [proje] SET DB_CHAINING OFF 
GO
ALTER DATABASE [proje] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [proje] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [proje] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [proje] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'proje', N'ON'
GO
ALTER DATABASE [proje] SET QUERY_STORE = OFF
GO
USE [proje]
GO
/****** Object:  Table [dbo].[Hareketler]    Script Date: 9.07.2023 20:29:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hareketler](
	[HareketID] [smallint] IDENTITY(1,1) NOT NULL,
	[Urun] [tinyint] NULL,
	[Müsteri] [tinyint] NULL,
	[Personel] [tinyint] NULL,
	[Fiyat] [smallint] NULL,
 CONSTRAINT [PK_Hareketler] PRIMARY KEY CLUSTERED 
(
	[HareketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Müsteriler]    Script Date: 9.07.2023 20:29:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Müsteriler](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [varchar](50) NULL,
 CONSTRAINT [PK_Müsteriler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personeller]    Script Date: 9.07.2023 20:29:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personeller](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](50) NULL,
 CONSTRAINT [PK_Personeller] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 9.07.2023 20:29:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](50) NULL,
	[Stok] [tinyint] NULL,
	[AlısFiyat] [int] NULL,
	[SatisFiyat] [int] NULL,
 CONSTRAINT [PK_Urunler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Hareketler] ON 

INSERT [dbo].[Hareketler] ([HareketID], [Urun], [Müsteri], [Personel], [Fiyat]) VALUES (6, 1, 4, 3, 1230)
INSERT [dbo].[Hareketler] ([HareketID], [Urun], [Müsteri], [Personel], [Fiyat]) VALUES (7, 1, 3, 3, 820)
INSERT [dbo].[Hareketler] ([HareketID], [Urun], [Müsteri], [Personel], [Fiyat]) VALUES (8, 3, 3, 2, 1780)
INSERT [dbo].[Hareketler] ([HareketID], [Urun], [Müsteri], [Personel], [Fiyat]) VALUES (9, 2, 2, 1, 780)
SET IDENTITY_INSERT [dbo].[Hareketler] OFF
GO
SET IDENTITY_INSERT [dbo].[Müsteriler] ON 

INSERT [dbo].[Müsteriler] ([ID], [AdSoyad]) VALUES (1, N'Veysel Sağlam')
INSERT [dbo].[Müsteriler] ([ID], [AdSoyad]) VALUES (2, N'Tuna Öztürk')
INSERT [dbo].[Müsteriler] ([ID], [AdSoyad]) VALUES (3, N'Ali Yıldız')
INSERT [dbo].[Müsteriler] ([ID], [AdSoyad]) VALUES (4, N'Emine Neşeli')
SET IDENTITY_INSERT [dbo].[Müsteriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Personeller] ON 

INSERT [dbo].[Personeller] ([ID], [Ad]) VALUES (1, N'Ahmet Çınar')
INSERT [dbo].[Personeller] ([ID], [Ad]) VALUES (2, N'Eda Güneş')
INSERT [dbo].[Personeller] ([ID], [Ad]) VALUES (3, N'Mehmet Çınar')
SET IDENTITY_INSERT [dbo].[Personeller] OFF
GO
SET IDENTITY_INSERT [dbo].[Urunler] ON 

INSERT [dbo].[Urunler] ([ID], [Ad], [Stok], [AlısFiyat], [SatisFiyat]) VALUES (1, N'Buzdolabı', 10, 950, 1230)
INSERT [dbo].[Urunler] ([ID], [Ad], [Stok], [AlısFiyat], [SatisFiyat]) VALUES (2, N'Çamaşır Makinesi', 5, 750, 820)
INSERT [dbo].[Urunler] ([ID], [Ad], [Stok], [AlısFiyat], [SatisFiyat]) VALUES (3, N'Laptop', 15, 1450, 1780)
SET IDENTITY_INSERT [dbo].[Urunler] OFF
GO
ALTER TABLE [dbo].[Hareketler]  WITH CHECK ADD  CONSTRAINT [FK_Hareketler_Müsteriler] FOREIGN KEY([Müsteri])
REFERENCES [dbo].[Müsteriler] ([ID])
GO
ALTER TABLE [dbo].[Hareketler] CHECK CONSTRAINT [FK_Hareketler_Müsteriler]
GO
ALTER TABLE [dbo].[Hareketler]  WITH CHECK ADD  CONSTRAINT [FK_Hareketler_Personeller] FOREIGN KEY([Personel])
REFERENCES [dbo].[Personeller] ([ID])
GO
ALTER TABLE [dbo].[Hareketler] CHECK CONSTRAINT [FK_Hareketler_Personeller]
GO
ALTER TABLE [dbo].[Hareketler]  WITH CHECK ADD  CONSTRAINT [FK_Hareketler_Urunler] FOREIGN KEY([Urun])
REFERENCES [dbo].[Urunler] ([ID])
GO
ALTER TABLE [dbo].[Hareketler] CHECK CONSTRAINT [FK_Hareketler_Urunler]
GO
/****** Object:  StoredProcedure [dbo].[Proje]    Script Date: 9.07.2023 20:29:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Proje]
as
Select Urunler.Ad as 'Ürün Ad',AdSoyad as 'Müşteri',Personeller.Ad as 'Personel',Fiyat as 'Fiyat' From Hareketler inner Join Urunler
on
Hareketler.Urun=Urunler.Id
inner join Müsteriler
on
Hareketler.Müsteri=Müsteriler.ID
inner join Personeller
on
Hareketler.Personel=Personeller.ID
GO
USE [master]
GO
ALTER DATABASE [proje] SET  READ_WRITE 
GO
