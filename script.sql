USE [master]
GO
/****** Object:  Database [FriendDatabase]    Script Date: 8/27/2017 6:38:46 PM ******/
CREATE DATABASE [FriendDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FriendDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\FriendDatabase.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FriendDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\FriendDatabase_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FriendDatabase] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FriendDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FriendDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FriendDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FriendDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FriendDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FriendDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [FriendDatabase] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FriendDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FriendDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FriendDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FriendDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FriendDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FriendDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FriendDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FriendDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FriendDatabase] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FriendDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FriendDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FriendDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FriendDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FriendDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FriendDatabase] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [FriendDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FriendDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FriendDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [FriendDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FriendDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FriendDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FriendDatabase] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FriendDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
USE [FriendDatabase]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/27/2017 6:38:46 PM ******/
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
/****** Object:  Table [dbo].[Friends]    Script Date: 8/27/2017 6:38:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Friends](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Available] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_Friends] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170827072108_InitialCreate', N'1.1.2')
SET IDENTITY_INSERT [dbo].[Friends] ON 

INSERT [dbo].[Friends] ([Id], [Address], [Available], [Name], [Phone], [Status]) VALUES (1, N'Test', N'Yes', N'A', N'12233', N'Present')
INSERT [dbo].[Friends] ([Id], [Address], [Available], [Name], [Phone], [Status]) VALUES (2, N'Test', N'Yes', N'B', N'12233', N'Present')
INSERT [dbo].[Friends] ([Id], [Address], [Available], [Name], [Phone], [Status]) VALUES (3, N'Test', N'Yes', N'C', N'12233', N'Present')
SET IDENTITY_INSERT [dbo].[Friends] OFF
USE [master]
GO
ALTER DATABASE [FriendDatabase] SET  READ_WRITE 
GO
