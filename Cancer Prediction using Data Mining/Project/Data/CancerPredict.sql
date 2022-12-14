USE [CancerPrediction]
GO
/****** Object:  Table [dbo].[DocDetails]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 2016/12/02 02:07:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedback](
	[Name] [varchar](50) NULL,
	[Feedback] [varchar](max) NULL,
	[Date] [varchar](50) NULL,
	[Time] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Register]    Script Date: 2016/12/02 02:07:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrainingData]    Script Date: 2016/12/02 02:07:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserData]    Script Date: 2016/12/02 02:07:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DocDetails] ([Did], [Name], [Address], [Mobile], [Email], [Age], [Gender], [Specialist]) VALUES (N'101', N'Amish Vora', N'Goregaon', N'9876543210', N'amishvora@gmail.com', N'30', N'Male', N'Skin Cancer')
INSERT [dbo].[DocDetails] ([Did], [Name], [Address], [Mobile], [Email], [Age], [Gender], [Specialist]) VALUES (N'102', N'Mary Samy', N'Dahisar', N'9876543211', N'marycom@gmail.com', N'35', N'Female', N'Breast Cancer')
INSERT [dbo].[DocDetails] ([Did], [Name], [Address], [Mobile], [Email], [Age], [Gender], [Specialist]) VALUES (N'103', N'Test', N'Mumbai', N'9876543212', N'testemail@gmail.com', N'40', N'Male', N'Lungs Cancer')
INSERT [dbo].[Feedback] ([Name], [Feedback], [Date], [Time]) VALUES (N'Hardik Barve', N'Got accurate analysis and also suggested good doctor for the same.', N'2016-11-22', N'13:03')
INSERT [dbo].[Register] ([Id], [Name], [Address], [Mobile], [Email], [Age], [Gender], [Password]) VALUES (N'1001', N'test', N'test', N'9876543210', N'test@gmail.com', N'23', N'Male', N'1234')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Breast Cancer', N'45', N'2', N'1', N'1', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Skin Cancer', N'60', N'1', N'0', N'0', N'0', N'6', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'15', N'2', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'60', N'1', N'0', N'0', N'0', N'6', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'3', N'20')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'70', N'2', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'2', N'15')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Breast Cancer', N'40', N'2', N'1', N'1', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Breast Cancer', N'45', N'2', N'1', N'1', N'0', N'6', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'40', N'1', N'0', N'0', N'0', N'6', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'3')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'45', N'1', N'0', N'0', N'0', N'5', N'3', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'50', N'1', N'0', N'0', N'0', N'8', N'2', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Breast Cancer', N'40', N'2', N'1', N'1', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Bladder Cancer', N'25', N'1', N'0', N'0', N'1', N'10', N'0', N'1', N'0', N'2', N'1', N'0', N'2', N'1', N'54', N'0', N'1', N'1', N'3', N'3')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'55', N'1', N'0', N'0', N'0', N'6', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'2', N'15')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'55', N'1', N'0', N'0', N'0', N'6', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'2', N'15')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'55', N'1', N'0', N'0', N'0', N'6', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'2', N'15')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'45', N'1', N'0', N'0', N'0', N'5', N'3', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'45', N'1', N'0', N'0', N'0', N'5', N'3', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Liver Cancer', N'55', N'1', N'0', N'0', N'0', N'6', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'2', N'15')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Brain Tumor', N'50', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'2', N'3', N'1', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Brain Tumor', N'50', N'2', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'3', N'4', N'1', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Brain Tumor', N'55', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'2', N'3', N'1', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Oral and Oropharyngeal Cancer', N'50', N'1', N'0', N'0', N'0', N'5', N'0', N'0', N'1', N'6', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Oral and Oropharyngeal Cancer', N'50', N'2', N'0', N'0', N'0', N'5', N'0', N'0', N'1', N'5', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Breast Cancer', N'40', N'2', N'1', N'1', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Breast Cancer', N'50', N'2', N'1', N'1', N'0', N'6', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Bladder Cancer', N'50', N'1', N'0', N'0', N'1', N'15', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Bladder Cancer', N'45', N'2', N'0', N'0', N'1', N'12', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Lung Cancer', N'35', N'1', N'0', N'0', N'0', N'5', N'3', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Lung Cancer', N'50', N'2', N'0', N'0', N'0', N'5', N'2', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Lung Cancer', N'40', N'1', N'0', N'0', N'0', N'5', N'2', N'1', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[TrainingData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss]) VALUES (N'Bladder Cancer', N'25', N'1', N'0', N'0', N'1', N'10', N'0', N'1', N'0', N'2', N'1', N'0', N'2', N'1', N'54', N'0', N'1', N'1', N'3', N'3')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'34', N'Female', N'1', N'1', N'0', N'5', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'34', N'Male', N'0', N'0', N'0', N'5', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'42', N'Male', N'0', N'0', N'0', N'5', N'2', N'1', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'42', N'Male', N'0', N'0', N'0', N'5', N'2', N'1', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'42', N'Male', N'0', N'0', N'0', N'5', N'2', N'1', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'System.FormatException: Input string was not in a correct format.
   at System.Number.ParseDouble(String value, NumberStyles options, NumberFormatInfo numfmt)
   at System.Convert.ToDouble(String value)
   at Check.btnAnalyse_Click(Object sender, EventArgs e) in e:\Nevon Projects\Cancer Prediction\Project\Check.aspx.cs:line 384')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'40', N'Female', N'1', N'1', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'System.FormatException: Input string was not in a correct format.
   at System.Number.ParseDouble(String value, NumberStyles options, NumberFormatInfo numfmt)
   at System.Convert.ToDouble(String value)
   at Check.btnAnalyse_Click(Object sender, EventArgs e) in e:\Nevon Projects\Cancer Prediction\Project\Check.aspx.cs:line 163')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'40', N'Male', N'0', N'0', N'0', N'5', N'2', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'System.FormatException: Input string was not in a correct format.
   at System.Number.ParseDouble(String value, NumberStyles options, NumberFormatInfo numfmt)
   at System.Convert.ToDouble(String value)
   at Check.btnAnalyse_Click(Object sender, EventArgs e) in e:\Nevon Projects\Cancer Prediction\Project\Check.aspx.cs:line 384')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'40', N'Male', N'0', N'0', N'0', N'5', N'2', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'System.FormatException: Input string was not in a correct format.
   at System.Number.ParseDouble(String value, NumberStyles options, NumberFormatInfo numfmt)
   at System.Convert.ToDouble(String value)
   at Check.btnAnalyse_Click(Object sender, EventArgs e) in e:\Nevon Projects\Cancer Prediction\Project\Check.aspx.cs:line 384')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'40', N'Male', N'0', N'0', N'0', N'5', N'3', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'System.FormatException: Input string was not in a correct format.
   at System.Number.ParseDouble(String value, NumberStyles options, NumberFormatInfo numfmt)
   at System.Convert.ToDouble(String value)
   at Check.btnAnalyse_Click(Object sender, EventArgs e) in e:\Nevon Projects\Cancer Prediction\Project\Check.aspx.cs:line 384')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'40', N'Female', N'1', N'1', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'System.FormatException: Input string was not in a correct format.
   at System.Number.ParseDouble(String value, NumberStyles options, NumberFormatInfo numfmt)
   at System.Convert.ToDouble(String value)
   at Check.btnAnalyse_Click(Object sender, EventArgs e) in e:\Nevon Projects\Cancer Prediction\Project\Check.aspx.cs:line 163')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'40', N'Female', N'1', N'1', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'System.FormatException: Input string was not in a correct format.
   at System.Number.ParseDouble(String value, NumberStyles options, NumberFormatInfo numfmt)
   at System.Convert.ToDouble(String value)
   at Check.btnAnalyse_Click(Object sender, EventArgs e) in e:\Nevon Projects\Cancer Prediction\Project\Check.aspx.cs:line 162')
INSERT [dbo].[UserData] ([Name], [Age], [Gender], [BreastSize], [Irritation], [BloodClot], [Urination], [ChestPain], [CoughBlood], [MouthPain], [RWPatch], [Chewing], [Headache], [Vomit], [MemProblem], [SkinPatch], [PatchSize], [Heartburn], [StomachBloat], [ShoulderPain], [WeightLoss], [Result]) VALUES (N'Test Name', N'40', N'Female', N'1', N'1', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'System.FormatException: Input string was not in a correct format.
   at System.Number.ParseDouble(String value, NumberStyles options, NumberFormatInfo numfmt)
   at System.Convert.ToDouble(String value)
   at Check.btnAnalyse_Click(Object sender, EventArgs e) in e:\Nevon Projects\Cancer Prediction\Project\Check.aspx.cs:line 162')
