USE [master]
GO
/****** Object:  Database [CleanArchUniversityDB]    Script Date: 04/04/2025 17:58:49 ******/
CREATE DATABASE [CleanArchUniversityDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CleanArchUniversityDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.FM3DB\MSSQL\DATA\CleanArchUniversityDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CleanArchUniversityDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.FM3DB\MSSQL\DATA\CleanArchUniversityDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CleanArchUniversityDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CleanArchUniversityDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CleanArchUniversityDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CleanArchUniversityDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CleanArchUniversityDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CleanArchUniversityDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CleanArchUniversityDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CleanArchUniversityDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET RECOVERY FULL 
GO
ALTER DATABASE [CleanArchUniversityDB] SET  MULTI_USER 
GO
ALTER DATABASE [CleanArchUniversityDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CleanArchUniversityDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CleanArchUniversityDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CleanArchUniversityDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CleanArchUniversityDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CleanArchUniversityDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CleanArchUniversityDB', N'ON'
GO
ALTER DATABASE [CleanArchUniversityDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [CleanArchUniversityDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CleanArchUniversityDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 04/04/2025 17:58:50 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 04/04/2025 17:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250331231735_Initial-Migration', N'9.0.3')
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 
GO
INSERT [dbo].[Courses] ([Id], [Name], [Description], [ImageUrl]) VALUES (1, N'Physics', N'Introduction to Physics', N'/images/art-ball-shaped-circle-414860.jpg')
GO
INSERT [dbo].[Courses] ([Id], [Name], [Description], [ImageUrl]) VALUES (2, N'Chemistry', N'Introduction to Chemistry', N'/images/blue-bubble-crystal-clear-132477.jpg')
GO
INSERT [dbo].[Courses] ([Id], [Name], [Description], [ImageUrl]) VALUES (3, N'Mathematics', N'Introduction to Mathematics', N'/images/book-education-graphing-paper-167682.jpg')
GO
INSERT [dbo].[Courses] ([Id], [Name], [Description], [ImageUrl]) VALUES (5, N'Biology', N'Introduction to Biology', N'/images/art-ball-shaped-circle-414860.jpg')
GO
INSERT [dbo].[Courses] ([Id], [Name], [Description], [ImageUrl]) VALUES (6, N'Computers', N'Intro to Computers', N'/images/book-education-graphing-paper-167682.jpg')
GO
INSERT [dbo].[Courses] ([Id], [Name], [Description], [ImageUrl]) VALUES (7, N'AutoMapper', N'Intro to AutoMapper', N'someImagePath')
GO
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
USE [master]
GO
ALTER DATABASE [CleanArchUniversityDB] SET  READ_WRITE 
GO
