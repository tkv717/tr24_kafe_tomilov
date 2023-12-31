USE [master]
GO
/****** Object:  Database [tr24_kafe_tomilov]    Script Date: 18.12.2023 10:28:30 ******/
CREATE DATABASE [tr24_kafe_tomilov]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tr24_kafe_tomilov', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQL16\MSSQL\DATA\tr24_kafe_tomilov.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'tr24_kafe_tomilov_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQL16\MSSQL\DATA\tr24_kafe_tomilov_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [tr24_kafe_tomilov] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tr24_kafe_tomilov].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tr24_kafe_tomilov] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET ARITHABORT OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET  MULTI_USER 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tr24_kafe_tomilov] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [tr24_kafe_tomilov] SET QUERY_STORE = OFF
GO
USE [tr24_kafe_tomilov]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [tr24_kafe_tomilov]
GO
/****** Object:  Table [dbo].[Items_type]    Script Date: 18.12.2023 10:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items_type](
	[item_type_id] [int] NOT NULL,
	[type_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Items_type] PRIMARY KEY CLUSTERED 
(
	[item_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuItems]    Script Date: 18.12.2023 10:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuItems](
	[item_id] [int] NOT NULL,
	[item_name] [nvarchar](50) NOT NULL,
	[item_type_id] [int] NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
	[description] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK__MenuItem__52020FDDA4ED3886] PRIMARY KEY CLUSTERED 
(
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuItems_has_Orders]    Script Date: 18.12.2023 10:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuItems_has_Orders](
	[item_id] [int] NOT NULL,
	[order_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 18.12.2023 10:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[order_status] [nvarchar](50) NOT NULL,
	[created_at] [datetime] NOT NULL,
 CONSTRAINT [PK__Orders__46596229CB04EE5F] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 18.12.2023 10:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[role_id] [int] NOT NULL,
	[role_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Roles__760965CC2E47AF0B] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shifts]    Script Date: 18.12.2023 10:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shifts](
	[shift_id] [int] NOT NULL,
	[start_time] [datetime] NOT NULL,
	[end_time] [datetime] NOT NULL,
	[user_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 18.12.2023 10:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[role_id] [int] NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Users__B9BE370F1CCE5622] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Items_type_1]    Script Date: 18.12.2023 10:28:30 ******/
CREATE NONCLUSTERED INDEX [IX_Items_type_1] ON [dbo].[Items_type]
(
	[item_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MenuItems]  WITH CHECK ADD  CONSTRAINT [FK_MenuItems_Items_type] FOREIGN KEY([item_type_id])
REFERENCES [dbo].[Items_type] ([item_type_id])
GO
ALTER TABLE [dbo].[MenuItems] CHECK CONSTRAINT [FK_MenuItems_Items_type]
GO
ALTER TABLE [dbo].[MenuItems_has_Orders]  WITH CHECK ADD  CONSTRAINT [FK_MenuItems_has_Orders_MenuItems] FOREIGN KEY([item_id])
REFERENCES [dbo].[MenuItems] ([item_id])
GO
ALTER TABLE [dbo].[MenuItems_has_Orders] CHECK CONSTRAINT [FK_MenuItems_has_Orders_MenuItems]
GO
ALTER TABLE [dbo].[MenuItems_has_Orders]  WITH CHECK ADD  CONSTRAINT [FK_MenuItems_has_Orders_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[MenuItems_has_Orders] CHECK CONSTRAINT [FK_MenuItems_has_Orders_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Shifts]  WITH CHECK ADD  CONSTRAINT [FK_Shifts_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Shifts] CHECK CONSTRAINT [FK_Shifts_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([role_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [tr24_kafe_tomilov] SET  READ_WRITE 
GO
