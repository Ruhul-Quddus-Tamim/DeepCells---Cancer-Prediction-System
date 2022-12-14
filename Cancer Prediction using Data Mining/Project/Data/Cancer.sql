USE [master]
GO
/****** Object:  Database [CancerPrediction]    Script Date: 01-08-2022 12:45:50 ******/
CREATE DATABASE [CancerPrediction]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CancerPrediction', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CancerPrediction.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CancerPrediction_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CancerPrediction_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CancerPrediction] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CancerPrediction].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CancerPrediction] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CancerPrediction] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CancerPrediction] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CancerPrediction] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CancerPrediction] SET ARITHABORT OFF 
GO
ALTER DATABASE [CancerPrediction] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CancerPrediction] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CancerPrediction] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CancerPrediction] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CancerPrediction] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CancerPrediction] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CancerPrediction] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CancerPrediction] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CancerPrediction] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CancerPrediction] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CancerPrediction] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CancerPrediction] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CancerPrediction] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CancerPrediction] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CancerPrediction] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CancerPrediction] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CancerPrediction] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CancerPrediction] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CancerPrediction] SET  MULTI_USER 
GO
ALTER DATABASE [CancerPrediction] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CancerPrediction] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CancerPrediction] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CancerPrediction] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CancerPrediction] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CancerPrediction] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CancerPrediction] SET QUERY_STORE = OFF
GO
USE [CancerPrediction]
GO
/****** Object:  Table [dbo].[DocDetails]    Script Date: 01-08-2022 12:45:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocDetails](
	[Did] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Specialist] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 01-08-2022 12:45:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[Name] [varchar](50) NULL,
	[Feedback] [varchar](max) NULL,
	[Date] [varchar](50) NULL,
	[Time] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Register]    Script Date: 01-08-2022 12:45:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[Id] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainingData]    Script Date: 01-08-2022 12:45:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingData](
	[Name] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[BreastSize] [varchar](50) NULL,
	[Irritation] [varchar](50) NULL,
	[BloodClot] [varchar](50) NULL,
	[Urination] [varchar](50) NULL,
	[ChestPain] [varchar](50) NULL,
	[CoughBlood] [varchar](50) NULL,
	[MouthPain] [varchar](50) NULL,
	[RWPatch] [varchar](50) NULL,
	[Chewing] [varchar](50) NULL,
	[Headache] [varchar](50) NULL,
	[Vomit] [varchar](50) NULL,
	[MemProblem] [varchar](50) NULL,
	[SkinPatch] [varchar](50) NULL,
	[PatchSize] [varchar](50) NULL,
	[Heartburn] [varchar](50) NULL,
	[StomachBloat] [varchar](50) NULL,
	[ShoulderPain] [varchar](50) NULL,
	[WeightLoss] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserData]    Script Date: 01-08-2022 12:45:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserData](
	[Name] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[BreastSize] [varchar](50) NULL,
	[Irritation] [varchar](50) NULL,
	[BloodClot] [varchar](50) NULL,
	[Urination] [varchar](50) NULL,
	[ChestPain] [varchar](50) NULL,
	[CoughBlood] [varchar](50) NULL,
	[MouthPain] [varchar](50) NULL,
	[RWPatch] [varchar](50) NULL,
	[Chewing] [varchar](50) NULL,
	[Headache] [varchar](50) NULL,
	[Vomit] [varchar](50) NULL,
	[MemProblem] [varchar](50) NULL,
	[SkinPatch] [varchar](50) NULL,
	[PatchSize] [varchar](50) NULL,
	[Heartburn] [varchar](50) NULL,
	[StomachBloat] [varchar](50) NULL,
	[ShoulderPain] [varchar](50) NULL,
	[WeightLoss] [varchar](50) NULL,
	[Result] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[DocDetails] ([Did], [Name], [Address], [Mobile], [Email], [Age], [Gender], [Specialist]) VALUES (N'101', N'Amish Vora', N'Goregaon', N'9876543210', N'amishvora@gmail.com', N'30', N'Male', N'Skin Cancer')
INSERT [dbo].[DocDetails] ([Did], [Name], [Address], [Mobile], [Email], [Age], [Gender], [Specialist]) VALUES (N'102', N'Mary Samy', N'Dahisar', N'9876543211', N'marycom@gmail.com', N'35', N'Female', N'Breast Cancer')
INSERT [dbo].[DocDetails] ([Did], [Name], [Address], [Mobile], [Email], [Age], [Gender], [Specialist]) VALUES (N'103', N'Test', N'Mumbai', N'9876543212', N'testemail@gmail.com', N'40', N'Male', N'Lungs Cancer')
GO
INSERT [dbo].[Feedback] ([Name], [Feedback], [Date], [Time]) VALUES (N'Hardik Barve', N'Got accurate analysis and also suggested good doctor for the same.', N'2016-11-22', N'13:03')
GO
INSERT [dbo].[Register] ([Id], [Name], [Address], [Mobile], [Email], [Age], [Gender], [Password]) VALUES (N'1001', N'test', N'test', N'9876543210', N'test@gmail.com', N'23', N'Male', N'1234')
GO
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Bladder Cancer', N'45', N'1', N'0', N'0', N'1', N'15', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Skin Cancer', N'60', N'1', N'0', N'0', N'0', N'6', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'15', N'2', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Bladder Cancer', N'48', N'1', N'0', N'0', N'1', N'12', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Bladder Cancer', N'50', N'1', N'0', N'0', N'1', N'10', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Bladder Cancer', N'53', N'1', N'0', N'0', N'1', N'15', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Bladder Cancer', N'55', N'1', N'0', N'0', N'1', N'13', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Skin Cancer', N'35', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'15', N'2', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Skin Cancer', N'35', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'12', N'3', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Skin Cancer', N'40', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'20', N'1', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Skin Cancer', N'45', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'10', N'2', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Bladder Cancer', N'25', N'1', N'0', N'0', N'1', N'10', N'0', N'1', N'0', N'2', N'1', N'0', N'2', N'1', N'54', N'0', N'1', N'1', N'3', N'3')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Skin Cancer', N'48', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'12', N'3', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Oral and Oropharyngeal Cancer', N'40', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'1', N'10', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Oral and Oropharyngeal Cancer', N'45', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'1', N'15', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Oral and Oropharyngeal Cancer', N'45', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'1', N'10', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Oral and Oropharyngeal Cancer', N'50', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'1', N'15', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Brain Tumor', N'50', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'2', N'3', N'1', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Brain Tumor', N'50', N'2', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'3', N'4', N'1', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Brain Tumor', N'55', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'2', N'3', N'1', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Oral and Oropharyngeal Cancer', N'50', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'1', N'6', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Oral and Oropharyngeal Cancer', N'50', N'2', N'0', N'0', N'0', N'5', N'0', N'0', N'1', N'5', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Bladder Cancer', N'50', N'1', N'0', N'0', N'1', N'15', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Bladder Cancer', N'45', N'2', N'0', N'0', N'1', N'12', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Lung Cancer', N'35', N'1', N'0', N'0', N'0', N'5', N'3', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Lung Cancer', N'50', N'2', N'0', N'0', N'0', N'5', N'2', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Lung Cancer', N'40', N'1', N'0', N'0', N'0', N'5', N'2', N'1', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'40', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'2', N'3')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'45', N'1', N'0', N'0', N'0', N'6', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'50', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'2')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'48', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'48', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'3', N'6')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'48', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'55', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'42', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'3', N'3')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'60', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'3', N'6')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Breast Cancer', N'35', N'2', N'1', N'1', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Breast Cancer', N'38', N'2', N'1', N'1', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Breast Cancer', N'40', N'2', N'1', N'1', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Breast Cancer', N'45', N'2', N'1', N'1', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Breast Cancer', N'48', N'2', N'1', N'1', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Breast Cancer', N'52', N'2', N'1', N'1', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Breast Cancer', N'55', N'2', N'1', N'1', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Breast Cancer', N'60', N'2', N'1', N'1', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
GO
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'34', N'Female', N'1', N'1', N'0', N'5', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'34', N'Male', N'0', N'0', N'0', N'5', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'42', N'Male', N'0', N'0', N'0', N'5', N'2', N'1', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'40', N'2', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Breast Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'40', N'1', N'0', N'0', N'0', N'5', N'2', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Breast Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'3', N'3', N'Liver Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'1', N'0', N'0', N'1', N'10', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Lung Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'1', N'10', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Liver Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'2', N'3', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'Brain Tumor')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'10', N'2', N'0', N'0', N'0', N'0', N'Liver Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'10', N'3', N'0', N'0', N'0', N'0', N'Liver Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'10', N'3', N'1', N'1', N'0', N'0', N'Liver Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'Liver Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'2', N'0', N'0', N'0', N'5', N'3', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Lung Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'2', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'3', N'3', N'Liver Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'2', N'0', N'0', N'0', N'5', N'0', N'0', N'1', N'12', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Liver Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'2', N'0', N'0', N'0', N'5', N'0', N'0', N'1', N'10', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Liver Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'2', N'0', N'0', N'0', N'5', N'0', N'0', N'1', N'20', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Liver Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'2', N'0', N'0', N'1', N'15', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Lung Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'46', N'1', N'0', N'0', N'1', N'12', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Lung Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'1', N'0', N'0', N'1', N'12', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Lung Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'1', N'0', N'0', N'1', N'15', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Lung Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'12', N'2', N'0', N'0', N'0', N'0', N'Skin Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'2', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'12', N'2', N'0', N'0', N'0', N'0', N'Skin Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'2', N'0', N'0', N'0', N'5', N'0', N'0', N'1', N'12', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Oral and Oropharyngeal Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'60', N'2', N'0', N'0', N'0', N'5', N'0', N'0', N'1', N'12', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Liver Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'2', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Breast Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'50', N'2', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Breast Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'50', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Breast Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'1', N'0', N'0', N'0', N'5', N'3', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Breast Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'1', N'10', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Breast Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'40', N'1', N'0', N'0', N'0', N'5', N'3', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Breast Cancer')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'45', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'3', N'4', N'Breast Cancer')
GO
USE [master]
GO
ALTER DATABASE [CancerPrediction] SET  READ_WRITE 
GO
