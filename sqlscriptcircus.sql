USE [Circ]
GO
/****** Object:  Table [dbo].[Animal]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animal](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ID_Type] [int] NULL,
	[Age] [int] NULL,
	[ID_Gender] [int] NULL,
	[Weight] [int] NULL,
	[FoodPreference] [nvarchar](max) NULL,
	[CareRecommendations] [nvarchar](max) NULL,
	[ID_Trainer] [int] NULL,
 CONSTRAINT [PK_Animal] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnimalType]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnimalType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_AnimalType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Applicationn]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applicationn](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Artist] [int] NULL,
	[Comment] [nvarchar](max) NULL,
	[DoneOrNo] [bit] NULL,
 CONSTRAINT [PK_Applicationn] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cabinet]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cabinet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[ID_Worker] [int] NULL,
 CONSTRAINT [PK_Cabinet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cage]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Animal] [int] NULL,
 CONSTRAINT [PK_Cage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostumeDept]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostumeDept](
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_CostumeDept] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DressingRoom]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DressingRoom](
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_DressingRoom] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](7) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfomance]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfomance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ID_Type] [int] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Perfomance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfomance_Report1]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfomance_Report1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Perfomance1] [int] NULL,
	[ID_Report1] [int] NULL,
 CONSTRAINT [PK_Perfomance_Report1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfomance_Report2]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfomance_Report2](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Perfomance2] [int] NULL,
	[ID_Report2] [int] NULL,
 CONSTRAINT [PK_Perfomance_Report2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerfomanceType]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerfomanceType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[Prepayment] [decimal](19, 4) NULL,
	[Company] [nvarchar](50) NULL,
 CONSTRAINT [PK_PerfomanceType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report1]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Profit] [decimal](19, 4) NULL,
	[Expenses] [decimal](19, 4) NULL,
	[ID_Type] [nchar](10) NULL,
	[Month] [nvarchar](50) NULL,
	[Year] [int] NULL,
 CONSTRAINT [PK_Report1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report2]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report2](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Month] [nvarchar](50) NULL,
	[Year] [int] NULL,
 CONSTRAINT [PK_Report2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taskk]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taskk](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ServiceStaff] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[DoneOrNo] [bit] NULL,
	[DateTime] [datetime] NULL,
 CONSTRAINT [PK_Taskk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timetable]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timetable](
	[ID] [int] NOT NULL,
	[ID_Perfomance] [int] NULL,
	[ID_Artist] [int] NULL,
	[time] [time](7) NULL,
 CONSTRAINT [PK_Timetable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfArtist]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfArtist](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](12) NULL,
	[AmountOfPerf] [int] NULL,
 CONSTRAINT [PK_TypeOfArtist] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 12.03.2024 19:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](30) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Patronymic] [nvarchar](30) NOT NULL,
	[DateOfBirth] [datetime] NULL,
	[ID_Position] [int] NOT NULL,
	[Phone] [nvarchar](11) NULL,
	[ID_TypeOfArtist] [int] NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Photo] [varbinary](max) NULL,
 CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Animal] ON 

INSERT [dbo].[Animal] ([ID], [Name], [ID_Type], [Age], [ID_Gender], [Weight], [FoodPreference], [CareRecommendations], [ID_Trainer]) VALUES (2, N'1', 1, 1, 1, 1, N'1', N'1', 1)
INSERT [dbo].[Animal] ([ID], [Name], [ID_Type], [Age], [ID_Gender], [Weight], [FoodPreference], [CareRecommendations], [ID_Trainer]) VALUES (3, N'1', 1, 1, 1, 1, N'1', N'1', 1)
SET IDENTITY_INSERT [dbo].[Animal] OFF
GO
SET IDENTITY_INSERT [dbo].[AnimalType] ON 

INSERT [dbo].[AnimalType] ([ID], [Type]) VALUES (1, N'Cats')
INSERT [dbo].[AnimalType] ([ID], [Type]) VALUES (2, N'Wolfs')
INSERT [dbo].[AnimalType] ([ID], [Type]) VALUES (3, N'Bear')
SET IDENTITY_INSERT [dbo].[AnimalType] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([ID], [Name]) VALUES (1, N'Female')
INSERT [dbo].[Gender] ([ID], [Name]) VALUES (2, N'Male')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Perfomance] ON 

INSERT [dbo].[Perfomance] ([ID], [Name], [ID_Type], [Date]) VALUES (1, N'1', 1, CAST(N'2024-03-12T14:22:30.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Perfomance] OFF
GO
SET IDENTITY_INSERT [dbo].[PerfomanceType] ON 

INSERT [dbo].[PerfomanceType] ([ID], [Name], [Prepayment], [Company]) VALUES (1, N'1         ', CAST(1.0000 AS Decimal(19, 4)), N'1')
INSERT [dbo].[PerfomanceType] ([ID], [Name], [Prepayment], [Company]) VALUES (2, N'2         ', CAST(2.0000 AS Decimal(19, 4)), N'2')
SET IDENTITY_INSERT [dbo].[PerfomanceType] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([ID], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[Position] ([ID], [Name]) VALUES (2, N'Artist')
INSERT [dbo].[Position] ([ID], [Name]) VALUES (3, N'Dress')
INSERT [dbo].[Position] ([ID], [Name]) VALUES (4, N'Employee')
INSERT [dbo].[Position] ([ID], [Name]) VALUES (5, N'')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Taskk] ON 

INSERT [dbo].[Taskk] ([ID], [ID_ServiceStaff], [Description], [DoneOrNo], [DateTime]) VALUES (1, 1, N'1', 1, CAST(N'2024-03-12T13:33:33.000' AS DateTime))
INSERT [dbo].[Taskk] ([ID], [ID_ServiceStaff], [Description], [DoneOrNo], [DateTime]) VALUES (2, 1, N'1', NULL, CAST(N'2024-03-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Taskk] ([ID], [ID_ServiceStaff], [Description], [DoneOrNo], [DateTime]) VALUES (3, 1, N'1', NULL, CAST(N'2024-03-12T19:20:57.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Taskk] OFF
GO
INSERT [dbo].[Timetable] ([ID], [ID_Perfomance], [ID_Artist], [time]) VALUES (1, 1, 1, CAST(N'00:00:00' AS Time))
INSERT [dbo].[Timetable] ([ID], [ID_Perfomance], [ID_Artist], [time]) VALUES (2, 1, 2, CAST(N'00:00:00' AS Time))
INSERT [dbo].[Timetable] ([ID], [ID_Perfomance], [ID_Artist], [time]) VALUES (3, 1, 1, CAST(N'00:00:00' AS Time))
INSERT [dbo].[Timetable] ([ID], [ID_Perfomance], [ID_Artist], [time]) VALUES (4, 1, 1, CAST(N'00:00:00' AS Time))
INSERT [dbo].[Timetable] ([ID], [ID_Perfomance], [ID_Artist], [time]) VALUES (6, 1, 1, CAST(N'00:00:00' AS Time))
INSERT [dbo].[Timetable] ([ID], [ID_Perfomance], [ID_Artist], [time]) VALUES (7, 1, 1, CAST(N'00:00:00' AS Time))
GO
SET IDENTITY_INSERT [dbo].[TypeOfArtist] ON 

INSERT [dbo].[TypeOfArtist] ([ID], [Name], [AmountOfPerf]) VALUES (1, N'beginner    ', 2)
INSERT [dbo].[TypeOfArtist] ([ID], [Name], [AmountOfPerf]) VALUES (2, N'middle      ', 3)
INSERT [dbo].[TypeOfArtist] ([ID], [Name], [AmountOfPerf]) VALUES (3, N'Vip         ', 4)
SET IDENTITY_INSERT [dbo].[TypeOfArtist] OFF
GO
SET IDENTITY_INSERT [dbo].[Worker] ON 

INSERT [dbo].[Worker] ([ID], [Surname], [Name], [Patronymic], [DateOfBirth], [ID_Position], [Phone], [ID_TypeOfArtist], [Login], [Password], [Photo]) VALUES (1, N'MI', N'NI', N'ZI', CAST(N'2024-09-30T00:00:00.000' AS DateTime), 1, N'1', 1, N'1', N'1', NULL)
INSERT [dbo].[Worker] ([ID], [Surname], [Name], [Patronymic], [DateOfBirth], [ID_Position], [Phone], [ID_TypeOfArtist], [Login], [Password], [Photo]) VALUES (2, N'go', N'wo', N'zo', CAST(N'2024-08-24T00:00:00.000' AS DateTime), 2, N'2', 2, N'2', N'2', NULL)
INSERT [dbo].[Worker] ([ID], [Surname], [Name], [Patronymic], [DateOfBirth], [ID_Position], [Phone], [ID_TypeOfArtist], [Login], [Password], [Photo]) VALUES (3, N'zo', N'bo', N'ro', CAST(N'2024-03-13T00:00:00.000' AS DateTime), 3, N'3', 3, N'3', N'3', NULL)
INSERT [dbo].[Worker] ([ID], [Surname], [Name], [Patronymic], [DateOfBirth], [ID_Position], [Phone], [ID_TypeOfArtist], [Login], [Password], [Photo]) VALUES (4, N'ro', N'ro', N'zo', CAST(N'2024-01-01T00:00:00.000' AS DateTime), 4, N'4', 3, N'4', N'4', NULL)
INSERT [dbo].[Worker] ([ID], [Surname], [Name], [Patronymic], [DateOfBirth], [ID_Position], [Phone], [ID_TypeOfArtist], [Login], [Password], [Photo]) VALUES (9, N'123', N'123', N'123', CAST(N'2024-03-01T00:00:00.000' AS DateTime), 1, N'898989', 1, N'123', N'123', NULL)
SET IDENTITY_INSERT [dbo].[Worker] OFF
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_AnimalType] FOREIGN KEY([ID_Type])
REFERENCES [dbo].[AnimalType] ([ID])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_AnimalType]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Gender] FOREIGN KEY([ID_Gender])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Gender]
GO
ALTER TABLE [dbo].[Applicationn]  WITH CHECK ADD  CONSTRAINT [FK_Application_Worker] FOREIGN KEY([ID_Artist])
REFERENCES [dbo].[Worker] ([ID])
GO
ALTER TABLE [dbo].[Applicationn] CHECK CONSTRAINT [FK_Application_Worker]
GO
ALTER TABLE [dbo].[Cabinet]  WITH CHECK ADD  CONSTRAINT [FK_Cabinet_Worker] FOREIGN KEY([ID_Worker])
REFERENCES [dbo].[Worker] ([ID])
GO
ALTER TABLE [dbo].[Cabinet] CHECK CONSTRAINT [FK_Cabinet_Worker]
GO
ALTER TABLE [dbo].[Cage]  WITH CHECK ADD  CONSTRAINT [FK_Cage_Animal] FOREIGN KEY([ID_Animal])
REFERENCES [dbo].[Animal] ([ID])
GO
ALTER TABLE [dbo].[Cage] CHECK CONSTRAINT [FK_Cage_Animal]
GO
ALTER TABLE [dbo].[Perfomance]  WITH CHECK ADD  CONSTRAINT [FK_Perfomance_PerfomanceType] FOREIGN KEY([ID_Type])
REFERENCES [dbo].[PerfomanceType] ([ID])
GO
ALTER TABLE [dbo].[Perfomance] CHECK CONSTRAINT [FK_Perfomance_PerfomanceType]
GO
ALTER TABLE [dbo].[Perfomance_Report1]  WITH CHECK ADD  CONSTRAINT [FK_Perfomance_Report1_Perfomance] FOREIGN KEY([ID_Perfomance1])
REFERENCES [dbo].[Perfomance] ([ID])
GO
ALTER TABLE [dbo].[Perfomance_Report1] CHECK CONSTRAINT [FK_Perfomance_Report1_Perfomance]
GO
ALTER TABLE [dbo].[Perfomance_Report1]  WITH CHECK ADD  CONSTRAINT [FK_Perfomance_Report1_Report11] FOREIGN KEY([ID_Report1])
REFERENCES [dbo].[Report1] ([ID])
GO
ALTER TABLE [dbo].[Perfomance_Report1] CHECK CONSTRAINT [FK_Perfomance_Report1_Report11]
GO
ALTER TABLE [dbo].[Perfomance_Report2]  WITH CHECK ADD  CONSTRAINT [FK_Perfomance_Report2_Perfomance] FOREIGN KEY([ID_Perfomance2])
REFERENCES [dbo].[Perfomance] ([ID])
GO
ALTER TABLE [dbo].[Perfomance_Report2] CHECK CONSTRAINT [FK_Perfomance_Report2_Perfomance]
GO
ALTER TABLE [dbo].[Perfomance_Report2]  WITH CHECK ADD  CONSTRAINT [FK_Perfomance_Report2_Report21] FOREIGN KEY([ID_Report2])
REFERENCES [dbo].[Report2] ([ID])
GO
ALTER TABLE [dbo].[Perfomance_Report2] CHECK CONSTRAINT [FK_Perfomance_Report2_Report21]
GO
ALTER TABLE [dbo].[Taskk]  WITH CHECK ADD  CONSTRAINT [FK_Task_Worker] FOREIGN KEY([ID_ServiceStaff])
REFERENCES [dbo].[Worker] ([ID])
GO
ALTER TABLE [dbo].[Taskk] CHECK CONSTRAINT [FK_Task_Worker]
GO
ALTER TABLE [dbo].[Timetable]  WITH CHECK ADD  CONSTRAINT [FK_Timetable_Perfomance] FOREIGN KEY([ID_Perfomance])
REFERENCES [dbo].[Perfomance] ([ID])
GO
ALTER TABLE [dbo].[Timetable] CHECK CONSTRAINT [FK_Timetable_Perfomance]
GO
ALTER TABLE [dbo].[Timetable]  WITH CHECK ADD  CONSTRAINT [FK_Timetable_Worker] FOREIGN KEY([ID_Artist])
REFERENCES [dbo].[Worker] ([ID])
GO
ALTER TABLE [dbo].[Timetable] CHECK CONSTRAINT [FK_Timetable_Worker]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_To_Position] FOREIGN KEY([ID_Position])
REFERENCES [dbo].[Position] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_To_Position]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_TypeOfArtist] FOREIGN KEY([ID_TypeOfArtist])
REFERENCES [dbo].[TypeOfArtist] ([ID])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_TypeOfArtist]
GO
