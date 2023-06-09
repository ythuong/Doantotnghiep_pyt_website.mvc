USE [master]
GO
/****** Object:  Database [webshop]    Script Date: 03/06/2023 3:39:25 CH ******/
CREATE DATABASE [webshop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'webshop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\webshop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'webshop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\webshop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [webshop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [webshop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [webshop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [webshop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [webshop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [webshop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [webshop] SET ARITHABORT OFF 
GO
ALTER DATABASE [webshop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [webshop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [webshop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [webshop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [webshop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [webshop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [webshop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [webshop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [webshop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [webshop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [webshop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [webshop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [webshop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [webshop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [webshop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [webshop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [webshop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [webshop] SET RECOVERY FULL 
GO
ALTER DATABASE [webshop] SET  MULTI_USER 
GO
ALTER DATABASE [webshop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [webshop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [webshop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [webshop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [webshop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [webshop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'webshop', N'ON'
GO
ALTER DATABASE [webshop] SET QUERY_STORE = OFF
GO
USE [webshop]
GO
/****** Object:  User [NT AUTHORITY\SYSTEM]    Script Date: 03/06/2023 3:39:25 CH ******/
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [anhvu2510]    Script Date: 03/06/2023 3:39:25 CH ******/
CREATE USER [anhvu2510] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[anhvu2510]
GO
ALTER ROLE [db_datareader] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
/****** Object:  Schema [anhvu2510]    Script Date: 03/06/2023 3:39:25 CH ******/
CREATE SCHEMA [anhvu2510]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 03/06/2023 3:39:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [varchar](12) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Salt] [nchar](6) NULL,
	[Active] [bit] NULL,
	[FullName] [nvarchar](150) NULL,
	[RoleID] [int] NULL,
	[LastLogin] [datetime] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attributes]    Script Date: 03/06/2023 3:39:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attributes](
	[AttributeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Attributes] PRIMARY KEY CLUSTERED 
(
	[AttributeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttributesPrices]    Script Date: 03/06/2023 3:39:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributesPrices](
	[AttributesPriceID] [int] IDENTITY(1,1) NOT NULL,
	[AttributeID] [int] NULL,
	[ProductID] [int] NULL,
	[Price] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_AttributesPrices] PRIMARY KEY CLUSTERED 
(
	[AttributesPriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 03/06/2023 3:39:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CatID] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[ParentID] [int] NULL,
	[Levels] [int] NULL,
	[Ordering] [int] NULL,
	[Published] [bit] NOT NULL,
	[Thumb] [nvarchar](250) NULL,
	[Title] [nvarchar](250) NULL,
	[Alias] [nvarchar](250) NULL,
	[MetaDesc] [nvarchar](250) NULL,
	[MetaKey] [nvarchar](250) NULL,
	[Cover] [nvarchar](255) NULL,
	[SchemaMarkup] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 03/06/2023 3:39:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](500) NULL,
	[Created] [datetime] NULL,
	[CustomerID] [int] NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 03/06/2023 3:39:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](255) NULL,
	[Birthday] [datetime] NULL,
	[Avatar] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Email] [nchar](150) NULL,
	[Phone] [varchar](12) NULL,
	[LocationID] [int] NULL,
	[District] [int] NULL,
	[Ward] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Password] [nvarchar](50) NULL,
	[Salt] [nchar](8) NULL,
	[LastLogin] [datetime] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 03/06/2023 3:39:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Type] [nvarchar](20) NULL,
	[Slug] [nvarchar](100) NULL,
	[NameWithType] [nvarchar](255) NULL,
	[PathWithType] [nvarchar](255) NULL,
	[ParentCode] [int] NULL,
	[Levels] [int] NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuAdmin]    Script Date: 03/06/2023 3:39:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuAdmin](
	[MenuID] [int] NULL,
	[TenMenuCha] [nvarchar](100) NULL,
	[TenMenuCon] [nvarchar](100) NULL,
	[TenController] [nvarchar](100) NULL,
	[TrangThai] [bit] NULL,
	[AccountID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 03/06/2023 3:39:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[OrderNumber] [int] NULL,
	[Quantity] [int] NULL,
	[Discount] [int] NULL,
	[Total] [int] NULL,
	[ShipDate] [datetime] NULL,
	[Amount] [int] NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 03/06/2023 3:39:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[ShipDate] [datetime] NULL,
	[TransactStatusID] [int] NULL,
	[Deleted] [bit] NULL,
	[Paid] [bit] NULL,
	[PaymentDate] [datetime] NULL,
	[PaymentID] [int] NULL,
	[Note] [nvarchar](max) NULL,
	[TotalMoney] [int] NULL,
	[Address] [nvarchar](max) NULL,
	[LocationID] [int] NULL,
	[District] [int] NULL,
	[Ward] [int] NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 03/06/2023 3:39:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pages](
	[PageID] [int] IDENTITY(1,1) NOT NULL,
	[PageName] [nvarchar](250) NULL,
	[Contents] [nvarchar](max) NULL,
	[Thumb] [nvarchar](250) NULL,
	[Published] [bit] NULL,
	[Title] [nvarchar](250) NULL,
	[MetaDesc] [nvarchar](250) NULL,
	[MetaKey] [nvarchar](250) NULL,
	[Alias] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[Ordering] [int] NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 03/06/2023 3:39:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NULL,
	[ShortDesc] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[CatID] [int] NULL,
	[Price] [int] NULL,
	[Discount] [int] NULL,
	[Thumb] [nvarchar](255) NULL,
	[Video] [nvarchar](255) NULL,
	[DateCreated] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[BestSellers] [bit] NULL,
	[HomeFlag] [bit] NULL,
	[Active] [bit] NULL,
	[Tags] [nvarchar](max) NULL,
	[Title] [nvarchar](255) NULL,
	[Alias] [nvarchar](255) NULL,
	[MetaDesc] [nvarchar](255) NULL,
	[MetaKey] [nvarchar](255) NULL,
	[UnitsInStock] [int] NULL,
	[chatlieu] [nvarchar](255) NULL,
	[songan] [nvarchar](255) NULL,
	[kichco] [nvarchar](255) NULL,
	[image] [nvarchar](50) NULL,
	[SupplierId] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 03/06/2023 3:39:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Levels] [int] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 03/06/2023 3:39:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippers](
	[ShipperID] [int] IDENTITY(1,1) NOT NULL,
	[ShipperName] [nvarchar](150) NULL,
	[Phone] [nchar](10) NULL,
	[Company] [nvarchar](150) NULL,
	[ShipDate] [datetime] NULL,
 CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED 
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 03/06/2023 3:39:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[Address] [nvarchar](300) NULL,
	[ProductQuantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTucs]    Script Date: 03/06/2023 3:39:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTucs](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[SContents] [nvarchar](255) NULL,
	[Contents] [nvarchar](max) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Published] [bit] NULL,
	[Alias] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[Author] [nvarchar](255) NULL,
	[AccountID] [int] NULL,
	[Tags] [nvarchar](max) NULL,
	[CatID] [int] NULL,
	[isHot] [bit] NULL,
	[isNewfeed] [bit] NULL,
	[MetaKey] [nvarchar](255) NULL,
	[MetaDesc] [nvarchar](255) NULL,
	[Views] [int] NULL,
 CONSTRAINT [PK_TinTucs] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactStatus]    Script Date: 03/06/2023 3:39:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactStatus](
	[TransactStatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_TransactStatus] PRIMARY KEY CLUSTERED 
(
	[TransactStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([AccountID], [Phone], [Email], [Password], [Salt], [Active], [FullName], [RoleID], [LastLogin], [CreateDate]) VALUES (1, N'0371554010', N'anhvu@gmail.com', N'987654321', NULL, NULL, N'Nguyễn Tuấn Anh', NULL, NULL, NULL)
INSERT [dbo].[Accounts] ([AccountID], [Phone], [Email], [Password], [Salt], [Active], [FullName], [RoleID], [LastLogin], [CreateDate]) VALUES (2, N'0326726735', N'long@gmail.com', N'123', NULL, NULL, N'Dũng Nguyễn', NULL, NULL, NULL)
INSERT [dbo].[Accounts] ([AccountID], [Phone], [Email], [Password], [Salt], [Active], [FullName], [RoleID], [LastLogin], [CreateDate]) VALUES (1002, N'0326726735', N'nhanvien@gmail.com', N'123', NULL, NULL, N'Hoài Nam', NULL, NULL, NULL)
INSERT [dbo].[Accounts] ([AccountID], [Phone], [Email], [Password], [Salt], [Active], [FullName], [RoleID], [LastLogin], [CreateDate]) VALUES (2002, N'0326726735', N'nhanvienkho@gmail.com', N'123', NULL, NULL, N'Bảo Hân', NULL, NULL, CAST(N'2023-04-27T21:33:44.517' AS DateTime))
INSERT [dbo].[Accounts] ([AccountID], [Phone], [Email], [Password], [Salt], [Active], [FullName], [RoleID], [LastLogin], [CreateDate]) VALUES (3003, N'0321447854', N'nhanvienship@gmail.com', N'123', NULL, NULL, N'Hoàng Nam', 2004, NULL, NULL)
INSERT [dbo].[Accounts] ([AccountID], [Phone], [Email], [Password], [Salt], [Active], [FullName], [RoleID], [LastLogin], [CreateDate]) VALUES (3004, N'0963008247', N'ythuongadmin@gmail.com', N'123321', N'm7xvm ', 1, N'Phạm Ý Thương', 1, NULL, CAST(N'2023-04-29T16:26:42.200' AS DateTime))
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (1009, N'Giày dép', N'Giày dép', NULL, NULL, NULL, 1, N'default.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (1010, N'Quần Jeans', N'Quần Jeans, Quần Kaki, Quần Âu', NULL, NULL, NULL, 1, N'default.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (1011, N'Túi & Ví', N'Túi & Ví', NULL, NULL, NULL, 1, N'default.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (1013, N'Phụ Kiện', N'Phụ Kiện', NULL, NULL, NULL, 1, N'default.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (1018, N'Áo thun', N'Áo thun nam, nữ', NULL, NULL, NULL, 1, N'default.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (1020, N'Đồ thể thao', N'Đồ thể thao', NULL, NULL, NULL, 0, N'default.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (1022, N'Chân váy', N'Chân váy, Đầm.', NULL, NULL, NULL, 1, N'default.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (1033, N'Áo sơ mi ', N'Áo sơ mi nam - nữ', NULL, NULL, NULL, 1, N'default.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (1034, N'Áo khoác', N'Áo khoác Nam  - Nữ', NULL, NULL, NULL, 1, N'default.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (1035, N'Quần Short', N'Quần Short nam', NULL, NULL, NULL, 1, N'default.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (1002, N'Sinh', NULL, NULL, N'Dương Quảng Hàm 8/48/72', N'sinh@gmail.com                                                                                                                                        ', N'0987654321', NULL, NULL, NULL, CAST(N'2022-06-01T13:39:29.097' AS DateTime), N'90fa844f7dbb5fcf40e50f470e1bec91', N'o}](0   ', NULL, 1)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (1003, N'Phan Anh Vỹ', NULL, NULL, N'Hà Nội', N'pavzz@gmail.com                                                                                                                                       ', N'0987654321', NULL, NULL, NULL, CAST(N'2022-06-07T13:49:27.967' AS DateTime), N'56557b7287efb6ad27c6101b88803521', N'iycl:   ', NULL, 1)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (1004, N'Nguyễn Đình Thành', NULL, NULL, N'Tứ Kỳ', N'thanh@gmail.com                                                                                                                                       ', N'0987654321', NULL, NULL, NULL, CAST(N'2022-06-15T22:15:51.170' AS DateTime), N'e7dee033032066800a37e1b3c89477a5', N']%xod   ', NULL, 1)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (1005, N'Nguyen Van A', NULL, NULL, NULL, N'vana@gmail.com                                                                                                                                        ', N'0987654321', NULL, NULL, NULL, CAST(N'2022-06-16T13:47:02.163' AS DateTime), N'c7c040f025ca37cc6f1c42915f6a39c9', N'e[j&f   ', NULL, 1)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (1006, N'Phan Bảo Long', NULL, NULL, N'Dương Quảng Hàm', N'abcd@gmail.com                                                                                                                                        ', N'0987654321', NULL, NULL, NULL, CAST(N'2022-06-18T22:02:14.740' AS DateTime), N'aa73c8e536f02118ed0081be054d4d38', N'%(~pw   ', NULL, 1)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (1007, N'TVHL', NULL, NULL, N'1 Nguyen Huy Tuong', N'longtvh2000@gmail.com                                                                                                                                 ', N'0947007963', NULL, NULL, NULL, CAST(N'2023-04-17T10:13:13.307' AS DateTime), N'29ccd58734193ea73b5959e4c3230003', N'vbhab   ', NULL, 1)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (1008, N'Long Bui', NULL, NULL, N'Duy Tân', N'user@gmail.com                                                                                                                                        ', N'0326726735', NULL, NULL, NULL, CAST(N'2023-04-22T19:20:36.487' AS DateTime), N'08ab80ff707c653623850dab84d1a5a1', N'@v@)y   ', NULL, 1)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (1009, N'Thương', NULL, NULL, N'hn', N'ythuong001@gmail.com                                                                                                                                  ', N'0963008274', NULL, NULL, NULL, CAST(N'2023-04-28T20:35:32.053' AS DateTime), N'3c9297c2d15dc362bce383499de96e2c', N'k&2hp   ', NULL, 1)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (1010, N'Thương test01', NULL, NULL, N'Mỹ Đức', N'khachang@gmail.com                                                                                                                                    ', N'0123456789', NULL, NULL, NULL, CAST(N'2023-04-28T21:03:20.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (1011, N'Thương Phạm', NULL, NULL, NULL, N'thuong@gmail.com                                                                                                                                      ', N'034360316', NULL, NULL, NULL, CAST(N'2023-04-29T10:29:02.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (1012, N'Ý Thương Phạmm', NULL, NULL, N'Thị Trấn Quốc Oai 1', N'ythuongpham@gmail.com                                                                                                                                 ', N'0987485904', NULL, NULL, NULL, CAST(N'2023-04-29T15:41:35.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (1013, N'Hằng Nguyễn', CAST(N'2004-12-04T12:00:00.000' AS DateTime), NULL, N'Làng Yên Nội', N'hangnt@gmail.com                                                                                                                                      ', N'0965222147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (1017, N'Nguyễn Thị Hiền', CAST(N'1999-05-10T10:24:00.000' AS DateTime), NULL, N'Phố Tân Phong', N'ngthien@gmail.com                                                                                                                                     ', N'0987858790', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (1018, N'PYThương', NULL, NULL, N'Lê thanh - Mỹ đức', N'pythuong@gmail.com                                                                                                                                    ', N'0343603164', NULL, NULL, NULL, CAST(N'2023-05-24T19:59:46.967' AS DateTime), N'0ff93fcca541154ef5016a847a96bce4', N'epemz   ', NULL, 1)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (1019, N'Nguyễn Hữu Dũng', NULL, NULL, NULL, N'dungnh001@gmail.com                                                                                                                                   ', N'0965529992', NULL, NULL, NULL, CAST(N'2023-05-27T20:43:34.670' AS DateTime), N'26ff70ef90104fce7d18d778c684924d', N'p!3@5   ', NULL, 1)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
INSERT [dbo].[MenuAdmin] ([MenuID], [TenMenuCha], [TenMenuCon], [TenController], [TrangThai], [AccountID]) VALUES (1, N'Dashboard', NULL, NULL, 1, 1)
INSERT [dbo].[MenuAdmin] ([MenuID], [TenMenuCha], [TenMenuCon], [TenController], [TrangThai], [AccountID]) VALUES (2, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (1022, 1013, 1028, NULL, NULL, NULL, 1168000, CAST(N'2023-04-17T10:13:35.123' AS DateTime), 2, 584000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (1023, 1020, 1011, NULL, NULL, NULL, 13900000, CAST(N'2023-04-22T19:57:57.610' AS DateTime), 1, 13900000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (1024, 1021, 1011, NULL, NULL, NULL, 46800000, CAST(N'2023-04-22T22:31:43.083' AS DateTime), 1, 13900000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (1025, 1021, 1012, NULL, NULL, NULL, 46800000, CAST(N'2023-04-22T22:31:43.100' AS DateTime), 1, 32900000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (1026, 1022, 1015, NULL, NULL, NULL, 55000000, CAST(N'2023-04-25T22:48:43.507' AS DateTime), 1, 55000000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (2026, 2022, 1011, NULL, NULL, NULL, 17400000, CAST(N'2023-04-28T20:36:05.227' AS DateTime), 1, 13900000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (2027, 2022, 1016, NULL, NULL, NULL, 17400000, CAST(N'2023-04-28T20:36:05.243' AS DateTime), 1, 3500000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (2029, 2023, 1014, NULL, NULL, NULL, 69400000, CAST(N'2023-04-29T08:23:13.633' AS DateTime), 4, 9900000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (2031, 2031, 1022, NULL, NULL, NULL, 1050000, CAST(N'2023-04-29T15:53:14.807' AS DateTime), 3, 350000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (2032, 2032, 1022, NULL, NULL, NULL, 350000, CAST(N'2023-04-29T16:02:01.393' AS DateTime), 1, 350000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (2033, 2033, 1022, NULL, NULL, NULL, 35150000, CAST(N'2023-04-29T16:06:46.890' AS DateTime), 1, 350000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (2034, 2033, 1011, NULL, NULL, NULL, 35150000, CAST(N'2023-04-29T16:06:46.890' AS DateTime), 2, 13900000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (2035, 2033, 1016, NULL, NULL, NULL, 35150000, CAST(N'2023-04-29T16:06:46.890' AS DateTime), 2, 3500000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (2036, 2034, 1014, NULL, NULL, NULL, 69700000, CAST(N'2023-05-02T15:02:43.670' AS DateTime), 3, 9900000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (2037, 2034, 1016, NULL, NULL, NULL, 69700000, CAST(N'2023-05-02T15:02:43.700' AS DateTime), 4, 3500000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (2038, 2034, 1017, NULL, NULL, NULL, 69700000, CAST(N'2023-05-02T15:02:43.700' AS DateTime), 4, 6500000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (2039, 2041, 1011, NULL, NULL, NULL, 278000, CAST(N'2023-05-24T20:01:19.167' AS DateTime), 2, 139000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (2043, 2051, 1063, NULL, NULL, NULL, 1698000, CAST(N'2023-06-01T16:36:17.473' AS DateTime), 2, 299000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [ShipDate], [Amount], [Price]) VALUES (2044, 2051, 1015, NULL, NULL, NULL, 1698000, CAST(N'2023-06-01T16:36:17.500' AS DateTime), 2, 550000)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [PaymentID], [Note], [TotalMoney], [Address], [LocationID], [District], [Ward], [ProductID]) VALUES (1013, 1007, CAST(N'2023-04-17T10:13:35.093' AS DateTime), CAST(N'2023-04-17T10:15:39.267' AS DateTime), 3, 0, 0, NULL, NULL, NULL, 1168000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [PaymentID], [Note], [TotalMoney], [Address], [LocationID], [District], [Ward], [ProductID]) VALUES (1020, 1008, CAST(N'2023-04-22T19:57:48.677' AS DateTime), NULL, 4, 0, 0, NULL, NULL, NULL, 13900000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [PaymentID], [Note], [TotalMoney], [Address], [LocationID], [District], [Ward], [ProductID]) VALUES (1021, 1008, CAST(N'2023-04-22T22:31:43.007' AS DateTime), NULL, 2, 0, 0, NULL, NULL, NULL, 46800000, N'Duy Tân', NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [PaymentID], [Note], [TotalMoney], [Address], [LocationID], [District], [Ward], [ProductID]) VALUES (1022, 1008, CAST(N'2023-04-25T22:48:43.407' AS DateTime), NULL, 1, 0, 0, NULL, NULL, NULL, 55000000, N'Duy Tân', NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [PaymentID], [Note], [TotalMoney], [Address], [LocationID], [District], [Ward], [ProductID]) VALUES (2022, 1009, CAST(N'2023-04-28T20:36:05.177' AS DateTime), NULL, 1, 1, 1, CAST(N'2023-04-28T20:52:37.957' AS DateTime), NULL, NULL, 17400000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [PaymentID], [Note], [TotalMoney], [Address], [LocationID], [District], [Ward], [ProductID]) VALUES (2023, 1010, CAST(N'2023-04-29T00:00:00.000' AS DateTime), CAST(N'2023-04-29T08:34:27.977' AS DateTime), 4, 0, 0, NULL, NULL, N'khách hàng thanh toán khi nhận hàng', 69400000, N'Hà đông', NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [PaymentID], [Note], [TotalMoney], [Address], [LocationID], [District], [Ward], [ProductID]) VALUES (2031, 1012, CAST(N'2023-04-29T15:53:14.507' AS DateTime), NULL, 1, 0, 0, NULL, NULL, NULL, 1050000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [PaymentID], [Note], [TotalMoney], [Address], [LocationID], [District], [Ward], [ProductID]) VALUES (2032, 1012, CAST(N'2023-04-29T16:02:01.233' AS DateTime), NULL, 4, 0, 0, NULL, NULL, NULL, 350000, N'Tân phong', NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [PaymentID], [Note], [TotalMoney], [Address], [LocationID], [District], [Ward], [ProductID]) VALUES (2033, 1012, CAST(N'2023-04-29T16:06:46.873' AS DateTime), CAST(N'2023-04-29T16:28:50.973' AS DateTime), 4, 0, 0, NULL, NULL, NULL, 35150000, N'Số 1 tân phong', NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [PaymentID], [Note], [TotalMoney], [Address], [LocationID], [District], [Ward], [ProductID]) VALUES (2034, 1012, CAST(N'2023-05-02T15:02:43.573' AS DateTime), CAST(N'2023-05-02T15:03:41.890' AS DateTime), 2, 0, 1, CAST(N'2023-05-29T10:40:26.590' AS DateTime), NULL, N'đã thanh toán', 69700000, N'Thị Trấn Quốc Oai 1', NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [PaymentID], [Note], [TotalMoney], [Address], [LocationID], [District], [Ward], [ProductID]) VALUES (2038, 1010, CAST(N'2023-05-23T04:39:00.000' AS DateTime), CAST(N'2023-05-23T04:39:00.000' AS DateTime), 4, 1, 1, CAST(N'2023-05-23T04:40:00.000' AS DateTime), NULL, N'đã thanh toán tại của hàng cơ sở 1', 250000, N'Mỹ Đức - Hà Nội', NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [PaymentID], [Note], [TotalMoney], [Address], [LocationID], [District], [Ward], [ProductID]) VALUES (2039, 1009, CAST(N'2023-05-24T04:41:00.000' AS DateTime), CAST(N'2023-05-24T04:41:00.000' AS DateTime), 4, 0, 0, CAST(N'2023-05-24T04:41:00.000' AS DateTime), NULL, N'đã cọc', 500000, N'Thụy Phương', NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [PaymentID], [Note], [TotalMoney], [Address], [LocationID], [District], [Ward], [ProductID]) VALUES (2041, 1018, CAST(N'2023-05-24T20:01:19.107' AS DateTime), NULL, 1, 0, 0, NULL, NULL, NULL, 278000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [PaymentID], [Note], [TotalMoney], [Address], [LocationID], [District], [Ward], [ProductID]) VALUES (2050, 1009, CAST(N'2023-05-31T16:07:00.000' AS DateTime), CAST(N'2023-06-01T16:08:00.000' AS DateTime), 4, 0, 1, CAST(N'2023-05-31T16:22:41.547' AS DateTime), NULL, N'đã thanh toán', 1500000, N'số nhà 29 đường Phạm Hùng', NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [PaymentID], [Note], [TotalMoney], [Address], [LocationID], [District], [Ward], [ProductID]) VALUES (2051, 1018, CAST(N'2023-06-01T16:36:17.387' AS DateTime), NULL, 1, 0, 0, NULL, NULL, NULL, 1698000, N'Lê thanh - Mỹ đức', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Pages] ON 

INSERT [dbo].[Pages] ([PageID], [PageName], [Contents], [Thumb], [Published], [Title], [MetaDesc], [MetaKey], [Alias], [CreatedDate], [Ordering]) VALUES (1009, N'Mật Candy', NULL, N'mat-candy.png', 1, NULL, NULL, NULL, N'mat-candy', CAST(N'2023-05-28T21:59:15.907' AS DateTime), NULL)
INSERT [dbo].[Pages] ([PageID], [PageName], [Contents], [Thumb], [Published], [Title], [MetaDesc], [MetaKey], [Alias], [CreatedDate], [Ordering]) VALUES (1010, N'Mật Xiuiu', NULL, N'mat-xiuiu.png', 1, NULL, NULL, NULL, N'mat-xiuiu', CAST(N'2023-05-28T21:59:38.723' AS DateTime), NULL)
INSERT [dbo].[Pages] ([PageID], [PageName], [Contents], [Thumb], [Published], [Title], [MetaDesc], [MetaKey], [Alias], [CreatedDate], [Ordering]) VALUES (1011, N'Cam H2T', NULL, N'cam-h2t.png', 1, NULL, NULL, NULL, N'cam-h2t', CAST(N'2023-05-28T22:00:06.547' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Pages] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1012, N'Áo Khoác Da Nâu', N'Áo khoác Da Nâu', N'Áo khoác Da Nâu', 1034, 329000, NULL, N'ao-khoac-da-nau.jpg', NULL, CAST(N'2023-04-20T14:35:04.000' AS DateTime), CAST(N'2023-05-31T17:04:27.207' AS DateTime), NULL, NULL, 1, NULL, N'Áo khoác Da Nâu', N'ao-khoac-da-nau', NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1014, N'Giày Chạy Cơ Bản', N'Giày Chạy Cơ Bản', N'Giày Chạy Cơ Bản', 1009, 990000, NULL, N'giay-chay-co-ban.jpg', NULL, CAST(N'2023-04-20T14:37:45.000' AS DateTime), CAST(N'2023-05-02T15:25:08.337' AS DateTime), NULL, NULL, 1, NULL, N'Giày Chạy Cơ Bản', N'giay-chay-co-ban', NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1015, N'Balo', N'Balo', N'Balo', 1011, 550000, NULL, N'balo.jpg', NULL, CAST(N'2023-04-20T14:40:15.000' AS DateTime), CAST(N'2023-05-02T15:25:12.300' AS DateTime), NULL, NULL, 1, NULL, N'Balo', N'balo', NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1016, N'Kính KR – RCT062', N'Kính', N'Kính', 1013, 350000, 0, N'kinh-kr-rct062.jpg', NULL, CAST(N'2023-04-20T14:41:28.000' AS DateTime), CAST(N'2023-05-31T17:02:22.983' AS DateTime), NULL, NULL, 1, NULL, N'Kính', N'kinh-kr-rct062', NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1033, N'Áo Thun Crop', N'Giày hàng new', NULL, 1018, 200000, 0, N'ao-thun-crop.jpg', NULL, CAST(N'2023-05-04T09:30:46.000' AS DateTime), CAST(N'2023-05-24T20:03:00.530' AS DateTime), NULL, NULL, 1, NULL, NULL, N'ao-thun-crop', NULL, NULL, 120, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1034, N'Giày Thể Thao', N'Giày hàng new', NULL, 1009, 123456, 0, N'giay-the-thao.jpg', NULL, CAST(N'2023-05-04T11:35:08.000' AS DateTime), CAST(N'2023-05-24T20:02:22.080' AS DateTime), NULL, NULL, 1, NULL, NULL, N'giay-the-thao', NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1036, N'Mũ Lưỡi Trai', N'nón là truyền thống', NULL, 1013, 50000, 0, N'non-la-viet-nam.jpeg', NULL, CAST(N'2023-05-17T21:12:45.000' AS DateTime), CAST(N'2023-05-28T12:30:14.760' AS DateTime), NULL, NULL, 1, NULL, NULL, N'mu-luoi-trai', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1042, N'ADIDAS EQT BASKETBALL NAVY WHITE', N'Giày Sandal Nữ Mũi Vuông Quai Chéo', N'Sandal nữ làm từ chất liệu da PU cao cấp, gót cao 5cm Đế trong êm chân, chất liệu bền - đẹp - giá tốt Da PU thân thiện với môi trường, độ dai và chắc tương tự như da thật', 1009, 489000, 0, N'adidas-eqt-basketball-navy-white.jpg', NULL, CAST(N'2023-05-29T11:20:59.000' AS DateTime), CAST(N'2023-05-29T11:37:12.107' AS DateTime), NULL, NULL, 1, NULL, NULL, N'adidas-eqt-basketball-navy-white', NULL, NULL, 320, NULL, NULL, N'S', NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1045, N'Quần Jeans Nam Slim Fit Lycra Co Giãn', N'Quần jeans nam chất liệu: 90% Cotton USA + 8% Polyester + 2% Lycra  Chất liệu Denim Cotton USA mang lại cảm giác mềm mại, thoải mái  Vải dày dặn chắc chắn, bền đẹp', N'Quần jeans nam chất liệu: 90% Cotton USA + 8% Polyester + 2% Lycra  Chất liệu Denim Cotton USA mang lại cảm giác mềm mại, thoải mái  Vải dày dặn chắc chắn, bền đẹp', 1010, 599000, 0, N'quan-jeans-nam-slim-fit-lycra-co-gian.jpg', NULL, CAST(N'2023-05-31T16:43:31.000' AS DateTime), CAST(N'2023-05-31T16:44:50.803' AS DateTime), NULL, NULL, 1, NULL, NULL, N'quan-jeans-nam-slim-fit-lycra-co-gian', NULL, NULL, 300, NULL, NULL, N'XXL', NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1046, N'Quần Jean Nam Cafe Thân Thiện Với Môi Trường', N'Quần jeans nam S-Cafe siêu co giãn thoáng mát  Sợi S-cafe: sản xuất từ công nghệ độc quyền có khả năng chống tia UV hiệu quả nhờ khả năng khúc xạ ánh sáng, hạn ché tia UVA và UVB tiếp xúc với cơ thể người mặc', N'Quần jeans nam S-Cafe siêu co giãn thoáng mát  Sợi S-cafe: sản xuất từ công nghệ độc quyền có khả năng chống tia UV hiệu quả nhờ khả năng khúc xạ ánh sáng, hạn ché tia UVA và UVB tiếp xúc với cơ thể người mặc', 1010, 599000, 10, N'quan-jean-nam-cafe-than-thien-voi-moi-truong.jpg', NULL, CAST(N'2023-05-31T16:46:06.373' AS DateTime), CAST(N'2023-05-31T16:46:06.373' AS DateTime), NULL, NULL, 1, NULL, NULL, N'quan-jean-nam-cafe-than-thien-voi-moi-truong', NULL, NULL, 250, NULL, NULL, N'S', NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1047, N'Quần Jeans Nam Slimfit Lycra Co Giãn Mác Dệt', N'Quần jean nam hiện đại, thiết kế mới nhất tại YODY  Chất liệu cotton pha Rayon với thành phần sợi cotton Mỹ tốt nhất thế giới  Sở hữu nhiều đặc tính nổi trội như bền hơn, dai hơn, sạch hơn các loại sợi thông thường', N'Quần jean nam hiện đại, thiết kế mới nhất tại YODY  Chất liệu cotton pha Rayon với thành phần sợi cotton Mỹ tốt nhất thế giới  Sở hữu nhiều đặc tính nổi trội như bền hơn, dai hơn, sạch hơn các loại sợi thông thường', 1010, 550000, 5, N'quan-jeans-nam-slimfit-lycra-co-gian-mac-det.jpg', NULL, CAST(N'2023-05-31T16:49:03.003' AS DateTime), CAST(N'2023-05-31T16:49:03.003' AS DateTime), NULL, NULL, 1, NULL, NULL, N'quan-jeans-nam-slimfit-lycra-co-gian-mac-det', NULL, NULL, 200, NULL, NULL, N'M', NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1048, N'Túi Nữ Canvas Makes You Happy', N'Túi vải canvas thiết kế trẻ trung, hiện đại  Chất liệu vải chắc chắn, phù hợp đựng các vật dụng hàng ngày như sổ, túi bít, vật dụng cá nhân... phục vụ quá trình học tệp, làm việc', N'Túi vải canvas thiết kế trẻ trung, hiện đại  Chất liệu vải chắc chắn, phù hợp đựng các vật dụng hàng ngày như sổ, túi bít, vật dụng cá nhân... phục vụ quá trình học tệp, làm việc', 1011, 10900, 0, N'tui-nu-canvas-makes-you-happy.jpg', NULL, CAST(N'2023-05-31T16:52:02.973' AS DateTime), CAST(N'2023-05-31T16:52:02.973' AS DateTime), NULL, NULL, 1, NULL, NULL, N'tui-nu-canvas-makes-you-happy', NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1049, N'Túi Đeo Chéo - Gigi Camera Cross Body Bag', N'Chính thức có mặt tại thị trường Việt Nam từ 2019, Typo được biết đến là một thương hiệu con của Cotton:On Group (thương hiệu thời trang & phụ kiện dành cho giới trẻ đến từ Úc)', N'Chính thức có mặt tại thị trường Việt Nam từ 2019, Typo được biết đến là một thương hiệu con của Cotton:On Group (thương hiệu thời trang & phụ kiện dành cho giới trẻ đến từ Úc)', 1011, 529000, 0, N'tui-deo-cheo-gigi-camera-cross-body-bag.jpg', NULL, CAST(N'2023-05-31T16:54:13.000' AS DateTime), CAST(N'2023-05-31T16:54:25.450' AS DateTime), NULL, NULL, 1, NULL, NULL, N'tui-deo-cheo-gigi-camera-cross-body-bag', NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1050, N'Thắt Lưng Nam Mặt Khoá Tự Động', N'Chất liệu da bò cao cấp  Da có đặc tính mềm, dẻo, không có hóa chất độc hại cùng với thiết kế trẻ trung hợp thời trang và vô cùng độc đáo  Mặt khóa chất liệu hợp kim kẽm nguyên khối   Thiết kế tinh tế, hiện đại và sang trọng.', N'Chất liệu da bò cao cấp  Da có đặc tính mềm, dẻo, không có hóa chất độc hại cùng với thiết kế trẻ trung hợp thời trang và vô cùng độc đáo  Mặt khóa chất liệu hợp kim kẽm nguyên khối   Thiết kế tinh tế, hiện đại và sang trọng.', 1013, 499000, 0, N'that-lung-nam-mat-khoa-tu-dong.jpg', NULL, CAST(N'2023-05-31T16:55:45.503' AS DateTime), CAST(N'2023-05-31T16:55:45.503' AS DateTime), NULL, NULL, 1, NULL, NULL, N'that-lung-nam-mat-khoa-tu-dong', NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1051, N'Áo Thun Nam Cổ Tròn In Gấu Bột Ngô', N'Chất liệu vải Bột Ngô  Thành phần: 80% Cotton + 20% I-scra Softcool  Vải Iscra co giãn vượt trội so với spandex', N'Chất liệu vải Bột Ngô  Thành phần: 80% Cotton + 20% I-scra Softcool  Vải Iscra co giãn vượt trội so với spandex', 1018, 299000, 3, N'ao-thun-nam-co-tron-in-gau-bot-ngo.jpg', NULL, CAST(N'2023-05-31T17:04:10.863' AS DateTime), CAST(N'2023-05-31T17:04:10.863' AS DateTime), NULL, NULL, 1, NULL, NULL, N'ao-thun-nam-co-tron-in-gau-bot-ngo', NULL, NULL, 32, NULL, NULL, N'S', NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1053, N'Áo Thun Nam Cotton USA Túi Ngực In Phối', N'Chất liệu: 100% Cotton bền vững góp phần bảo vệ môi trường sống  Vải Cotton Compact được dệt từ sợi bông USA cao cấp', N'Chất liệu: 100% Cotton bền vững góp phần bảo vệ môi trường sống  Vải Cotton Compact được dệt từ sợi bông USA cao cấp', 1018, 269000, 0, N'ao-thun-nam-cotton-usa-tui-nguc-in-phoi.jpg', NULL, CAST(N'2023-05-31T17:11:23.550' AS DateTime), CAST(N'2023-05-31T17:11:23.550' AS DateTime), NULL, NULL, 1, NULL, NULL, N'ao-thun-nam-cotton-usa-tui-nguc-in-phoi', NULL, NULL, 220, NULL, NULL, N'XL', NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1054, N'Áo Thun Nữ Vải Bột Ngô Thêu Think Different', N'Chất liệu vải Bột Ngô  Thành phần 80% Cotton + 20% I-scra Softcool  Chất liệu thân thiện với môi trường.', N'Chất liệu vải Bột Ngô  Thành phần 80% Cotton + 20% I-scra Softcool  Chất liệu thân thiện với môi trường.', 1018, 249000, 0, N'ao-thun-nu-vai-bot-ngo-theu-think-different.jpg', NULL, CAST(N'2023-05-31T17:12:50.560' AS DateTime), CAST(N'2023-05-31T17:12:50.560' AS DateTime), NULL, NULL, 1, NULL, NULL, N'ao-thun-nu-vai-bot-ngo-theu-think-different', NULL, NULL, 60, NULL, NULL, N'M', NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1055, N'Chân Váy Dáng A Khaki Túi Ốp', N'Chân váy nữ chất liệu khaki, thành phần: 60% Cotton +37% Nylon +3% Spandex  Kiểu dáng A túi ốp là điểm nhấn  Thiết kế năng động, cá tính', N'Chân váy nữ chất liệu khaki, thành phần: 60% Cotton +37% Nylon +3% Spandex  Kiểu dáng A túi ốp là điểm nhấn  Thiết kế năng động, cá tính', 1022, 399000, 0, N'chan-vay-dang-a-khaki-tui-op.jpg', NULL, CAST(N'2023-05-31T17:16:23.587' AS DateTime), CAST(N'2023-05-31T17:16:23.587' AS DateTime), NULL, NULL, 1, NULL, NULL, N'chan-vay-dang-a-khaki-tui-op', NULL, NULL, 0, NULL, NULL, N'M', NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1056, N'Chân Váy Chữ A Dáng Dài Qua Gối', N'Chân váy dài dáng chữ A  Chất liệu nhung tăm ấm áp', N'Chân váy dài dáng chữ A  Chất liệu nhung tăm ấm áp', 1022, 399000, 0, N'chan-vay-chu-a-dang-dai-qua-goi.jpg', NULL, CAST(N'2023-05-31T17:22:04.000' AS DateTime), CAST(N'2023-05-31T17:23:33.303' AS DateTime), NULL, NULL, 1, NULL, NULL, N'chan-vay-chu-a-dang-dai-qua-goi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1057, N'Chân Váy Bút Chì Dáng Dài Xẻ Sau', N'Chất liệu có thành phần 92% Polyester + 8% Spandex mềm mại thoáng mát, bền chắc, co dãn tạo cử động thoải mái khi mặc', N'Chất liệu có thành phần 92% Polyester + 8% Spandex mềm mại thoáng mát, bền chắc, co dãn tạo cử động thoải mái khi mặc', 1022, 279300, 2, N'chan-vay-but-chi-dang-dai-xe-sau.jpg', NULL, CAST(N'2023-05-31T17:23:24.107' AS DateTime), CAST(N'2023-05-31T17:23:24.107' AS DateTime), NULL, NULL, 1, NULL, NULL, N'chan-vay-but-chi-dang-dai-xe-sau', NULL, NULL, 22, NULL, NULL, N'M', NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1058, N'Sơ Mi Dài Tay Nữ Thô Dáng Rộng', N'Áo sơ mi nữ tay dài dáng rộng trẻ trung  Cổ bẻ, khuy dọc thân trước, cầu vai phía sau và một túi ngực mở', N'Áo sơ mi nữ tay dài dáng rộng trẻ trung  Cổ bẻ, khuy dọc thân trước, cầu vai phía sau và một túi ngực mở', 1033, 479000, NULL, N'so-mi-dai-tay-nu-tho-dang-rong.jpg', NULL, CAST(N'2023-05-31T17:24:52.000' AS DateTime), CAST(N'2023-05-31T17:28:58.993' AS DateTime), NULL, NULL, 1, NULL, NULL, N'so-mi-dai-tay-nu-tho-dang-rong', NULL, NULL, 120, NULL, NULL, N'XL', NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1059, N'Áo Sơ Mi Nữ Tay Ngắn Vai Chờm In Họa Tiết', N'Chất liệu vải: 100% Nano Polyester mềm mại, thoáng mát  Khả năng thấm hút nhanh, không nhăn  Sợi Nano siêu nhỏ hơn đường kính sợi tóc nhiều lần nên kết cấu vải đanh', N'Chất liệu vải: 100% Nano Polyester mềm mại, thoáng mát  Khả năng thấm hút nhanh, không nhăn  Sợi Nano siêu nhỏ hơn đường kính sợi tóc nhiều lần nên kết cấu vải đanh', 1033, 449000, 0, N'ao-so-mi-nu-tay-ngan-vai-chom-in-hoa-tiet.jpg', NULL, CAST(N'2023-05-31T17:27:46.000' AS DateTime), CAST(N'2023-05-31T17:28:22.927' AS DateTime), NULL, NULL, 1, NULL, NULL, N'ao-so-mi-nu-tay-ngan-vai-chom-in-hoa-tiet', NULL, NULL, 30, NULL, NULL, N'XL', NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1060, N'Áo Sơ Mi Nữ Tay Dài Dáng Suông Ngực Thêu Gấu', N'Áo sơ mi nữ suông tay dài  Thiết kế trẻ trung thêu hình gấu ở ngực tạo điểm nhấn riêng biệt', NULL, 1033, 279300, 2, N'ao-so-mi-nu-tay-dai-dang-suong-nguc-theu-gau.jpg', NULL, CAST(N'2023-05-31T17:29:59.490' AS DateTime), CAST(N'2023-05-31T17:29:59.490' AS DateTime), NULL, NULL, 1, NULL, NULL, N'ao-so-mi-nu-tay-dai-dang-suong-nguc-theu-gau', NULL, NULL, 0, NULL, NULL, N'XL', NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1061, N'Áo KhoácNam -  Nữ Thể Thao In Sọc', N'Áo khoác nữ cản gió, cản bụi, giữ ấm  Chất liệu thành phần: 88% nylon, 12% spandex  Vải co giãn 4 chiều, rất thoải mái dễ dàng khi vận động', N'Áo khoác nữ cản gió, cản bụi, giữ ấm  Chất liệu thành phần: 88% nylon, 12% spandex  Vải co giãn 4 chiều, rất thoải mái dễ dàng khi vận động', 1034, 649000, 0, N'ao-khoacnam-nu-the-thao-in-soc.jpg', NULL, CAST(N'2023-05-31T17:31:59.877' AS DateTime), CAST(N'2023-05-31T17:31:59.873' AS DateTime), NULL, NULL, 1, NULL, NULL, N'ao-khoacnam-nu-the-thao-in-soc', NULL, NULL, 320, NULL, NULL, N'XXL', NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1062, N'Áo Khoác Gió Nữ 3C Plus Năng Động', N'Áo khoác gió nữ 3C PLUS: Cản gió, Cản bụi, Chống ngấm nước vào bên trong  Phiên bản nâng cấp của Áo gió 3C', N'Áo khoác gió nữ 3C PLUS: Cản gió, Cản bụi, Chống ngấm nước vào bên trong  Phiên bản nâng cấp của Áo gió 3C', 1034, 499000, 0, N'ao-khoac-gio-nu-3c-plus-nang-dong.jpg', NULL, CAST(N'2023-05-31T17:33:06.563' AS DateTime), CAST(N'2023-05-31T17:33:06.563' AS DateTime), NULL, NULL, 1, NULL, NULL, N'ao-khoac-gio-nu-3c-plus-nang-dong', NULL, NULL, 10, NULL, NULL, N'XXL', NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1063, N'Quần Short Nam Kaki Ống Đứng Thể Thao', N'Chất liệu Kaki  Kaki là chất liệu vải được dệt nên có cấu trúc vô cùng chắc chắn, bè mặt vải khít.', N'Chất liệu Kaki  Kaki là chất liệu vải được dệt nên có cấu trúc vô cùng chắc chắn, bè mặt vải khít.', 1035, 299000, 0, N'quan-short-nam-kaki-ong-dung-the-thao.jpg', NULL, CAST(N'2023-05-31T17:34:16.000' AS DateTime), CAST(N'2023-06-03T13:59:18.400' AS DateTime), NULL, NULL, 1, NULL, NULL, N'quan-short-nam-kaki-ong-dung-the-thao', NULL, NULL, 120, NULL, NULL, N'XL', NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock], [chatlieu], [songan], [kichco], [image], [SupplierId]) VALUES (1064, N'Quần Short Nam Kaki Ống Đứng Lịch Lãm', N'Chất liệu Kaki mềm nhẹ, thoải mái  Quần short nam thiết kế cơ bản dài ngang gối', N'Chất liệu Kaki mềm nhẹ, thoải mái  Quần short nam thiết kế cơ bản dài ngang gối', 1035, 359000, 0, N'quan-short-nam-kaki-ong-dung-lich-lam.jpg', NULL, CAST(N'2023-05-31T17:35:13.000' AS DateTime), CAST(N'2023-06-03T14:01:23.370' AS DateTime), NULL, NULL, 1, NULL, NULL, N'quan-short-nam-kaki-ong-dung-lich-lam', NULL, NULL, 120, NULL, NULL, N'S', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName], [Description], [Levels]) VALUES (1, N'Admin', N'Quản trị viên', NULL)
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Description], [Levels]) VALUES (2, N'Nhân Viên', N'Nhân viên bán hàng', 2)
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Description], [Levels]) VALUES (3, N'Khóa tài khoản', N'Đóng không cho phép sử dụng tài khoản', 3)
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Description], [Levels]) VALUES (1003, N'Nhân Viên Kho', N'Nhân Viên Quản  Lý Kho', NULL)
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Description], [Levels]) VALUES (2004, N'Nhân viên giao hàng', N'Nhân viên giao hàng', NULL)
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Description], [Levels]) VALUES (2007, N'Nhân viên Sale', N'Nhân viên hỗ trợ khách hàng', NULL)
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierID], [Name], [Address], [ProductQuantity]) VALUES (4, N'Simpacam', N'China', 200)
INSERT [dbo].[Supplier] ([SupplierID], [Name], [Address], [ProductQuantity]) VALUES (5, N'Yody hà nội', N'hà nội', 500)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[TinTucs] ON 

INSERT [dbo].[TinTucs] ([PostID], [Title], [SContents], [Contents], [Thumb], [Published], [Alias], [CreatedDate], [Author], [AccountID], [Tags], [CatID], [isHot], [isNewfeed], [MetaKey], [MetaDesc], [Views]) VALUES (1016, N'99+ mẫu đồng phục team building cho công ty doanh nghiệp vào hè', NULL, N'Team building là một hoạt động rất quan trọng trong doanh nghiệp để tạo sự gắn kết và đoàn kết giữa các nhân viên, phòng ban và bộ phận. Nó không chỉ giúp cải thiện hiệu suất làm việc, mà còn đóng vai trò quan trọng trong việc nâng cao kỹ năng và trí tuệ của nhân viên.', N'99-mau-dong-phuc-team-building-cho-cong-ty-doanh-nghiep-vao-he.jpg', 1, N'99-mau-dong-phuc-team-building-cho-cong-ty-doanh-nghiep-vao-he', CAST(N'2023-06-01T14:45:21.340' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TinTucs] ([PostID], [Title], [SContents], [Contents], [Thumb], [Published], [Alias], [CreatedDate], [Author], [AccountID], [Tags], [CatID], [isHot], [isNewfeed], [MetaKey], [MetaDesc], [Views]) VALUES (1017, N'TOP 10+ Kiểu áo dài đẹp trẻ trung XINH LUNG LINH', NULL, N'Áo dài là một trang phục truyền thống mang tính đặc trưng của người dân Việt Nam. Với thiết kế dài và ôm sát cơ thể, áo dài thường được may từ vải lụa hoặc vải thô với đường cắt tỉ mỉ.   Nét đặc biệt của áo dài chính là sự kết hợp giữa áo và váy, tạo nên một bộ trang phục tinh tế và duyên dáng. Áo dài thường được lựa chọn trong những dịp trọng đại như lễ cưới, các lễ hội hay các sự kiện quan trọng khác. Nó truyền tải ý nghĩa về sự thanh lịch, truyền thống và vẻ đẹp của người phụ nữ Việt Nam.', N'top-10-kieu-ao-dai-dep-tre-trung-xinh-lung-linh.jpg', 1, NULL, CAST(N'2023-06-01T14:45:53.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TinTucs] ([PostID], [Title], [SContents], [Contents], [Thumb], [Published], [Alias], [CreatedDate], [Author], [AccountID], [Tags], [CatID], [isHot], [isNewfeed], [MetaKey], [MetaDesc], [Views]) VALUES (1018, N'10+ Mẫu đồng phục họp lớp THỜI TRANG VÀ CHẤT LƯỢNG', NULL, N'Tinh thần đoàn kết, đồng lòng: Khi sử dụng những bộ đồng phục có màu sắc giống nhau, thiết kế giống nhau, chất liệu giống nhau thì mỗi thành viên trong lớp sẽ phần nào cảm nhận được tinh thần đoàn kết được khắc sâu từ khi còn chung lớp cho đến khi ra trường.', N'10-mau-dong-phuc-hop-lop-thoi-trang-va-chat-luong.jpg', 1, NULL, CAST(N'2023-06-01T14:49:15.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TinTucs] ([PostID], [Title], [SContents], [Contents], [Thumb], [Published], [Alias], [CreatedDate], [Author], [AccountID], [Tags], [CatID], [isHot], [isNewfeed], [MetaKey], [MetaDesc], [Views]) VALUES (1019, N'Các mẫu đồng phục công sở rành cho phái đẹp', NULL, N'KING SHOES CHUẨN GIÀY REAL - DEAL SIÊU KHỦNG  Cửa Hàng KING SHOES là một trong những nơi sưu tầm có khối lượng giày hiếm siêu khủng. Có những mẫu giày cực kì hype được giới sưu tầm săn lùng, thậm chí bạn sẽ bắt gặp nhiều mẫu lạ mới mà hiếm shop nào có. Có những mẫu chỉ có độc nhất 1 đôi. Ngoài ra những mẫu đang rất HOT trên thị trường sneaker về liên tục nên các bạn cứ yên tâm không sợ hết hàng.', N'cac-mau-dong-phuc-cong-so-ranh-cho-phai-dep.jpg', 0, NULL, CAST(N'2023-06-01T14:50:21.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TinTucs] ([PostID], [Title], [SContents], [Contents], [Thumb], [Published], [Alias], [CreatedDate], [Author], [AccountID], [Tags], [CatID], [isHot], [isNewfeed], [MetaKey], [MetaDesc], [Views]) VALUES (1022, N'CHỌN SIZE GIÀY NIKE, ADIDAS', NULL, N'KING SHOES CHUẨN GIÀY REAL - DEAL SIÊU KHỦNG  Cửa Hàng KING SHOES là một trong những nơi sưu tầm có khối lượng giày hiếm siêu khủng. Có những mẫu giày cực kì hype được giới sưu tầm săn lùng, thậm chí bạn sẽ bắt gặp nhiều mẫu lạ mới mà hiếm shop nào có. Có những mẫu chỉ có độc nhất 1 đôi. Ngoài ra những mẫu đang rất HOT trên thị trường sneaker về liên tục nên các bạn cứ yên tâm không sợ hết hàng.', N'chon-size-giay-nike-adidas.jpg', 0, NULL, CAST(N'2023-06-03T14:10:35.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TinTucs] OFF
GO
SET IDENTITY_INSERT [dbo].[TransactStatus] ON 

INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (1, N'Chờ lấy hàng', N'Đã xác nhận và đang soạn hàng')
INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (2, N'Chờ xác nhận ', N'Đang được người bán xác nhận với người mua')
INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (3, N'Đang giao', N'Đơn hàng đang được giao tới người mua')
INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (4, N'Đã giao thành công ', N'Đơn hàng đã được giao thành công tới người mua')
INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (5, N'Đã hủy', N'Đơn hàng đã được hủy thành công')
INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (6, N'Trả hàng ', N'Đơn hàng đã được trả hàng thành công')
SET IDENTITY_INSERT [dbo].[TransactStatus] OFF
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Roles]
GO
ALTER TABLE [dbo].[AttributesPrices]  WITH CHECK ADD  CONSTRAINT [FK_AttributesPrices_Attributes] FOREIGN KEY([AttributeID])
REFERENCES [dbo].[Attributes] ([AttributeID])
GO
ALTER TABLE [dbo].[AttributesPrices] CHECK CONSTRAINT [FK_AttributesPrices_Attributes]
GO
ALTER TABLE [dbo].[AttributesPrices]  WITH CHECK ADD  CONSTRAINT [FK_AttributesPrices_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[AttributesPrices] CHECK CONSTRAINT [FK_AttributesPrices_Products]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Customers]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Products]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Locations] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Locations]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_TransactStatus] FOREIGN KEY([TransactStatusID])
REFERENCES [dbo].[TransactStatus] ([TransactStatusID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_TransactStatus]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CatID])
REFERENCES [dbo].[Categories] ([CatID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
/****** Object:  StoredProcedure [dbo].[USP_GETCUSTOMERBYPHONE]    Script Date: 03/06/2023 3:39:26 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_GETCUSTOMERBYPHONE](
	@phoneNumber VARCHAR(12)
) 
AS
BEGIN
	SELECT *
	FROM [dbo].[Accounts]
	WHERE Phone LIKE '%' + @phoneNumber + '%'
END
GO
USE [master]
GO
ALTER DATABASE [webshop] SET  READ_WRITE 
GO
