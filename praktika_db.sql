USE [praktika]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 12/21/2020 5:20:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Grades] [int] NULL,
	[Student_id] [int] NOT NULL,
	[Subject_id] [int] NOT NULL,
	[Group_id] [int] NOT NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 12/21/2020 5:20:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 12/21/2020 5:20:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Group_id] [int] NULL,
	[Teacher_id] [int] NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/21/2020 5:20:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[user_Type] [nvarchar](50) NOT NULL,
	[group_id] [int] NULL,
	[username] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Grade] ON 

INSERT [dbo].[Grade] ([id], [Grades], [Student_id], [Subject_id], [Group_id]) VALUES (6, 7, 9, 1, 1)
INSERT [dbo].[Grade] ([id], [Grades], [Student_id], [Subject_id], [Group_id]) VALUES (7, 7, 1, 1, 1)
INSERT [dbo].[Grade] ([id], [Grades], [Student_id], [Subject_id], [Group_id]) VALUES (9, 8, 16, 5, 4)
INSERT [dbo].[Grade] ([id], [Grades], [Student_id], [Subject_id], [Group_id]) VALUES (11, 7, 1, 3, 1)
SET IDENTITY_INSERT [dbo].[Grade] OFF
GO
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([id], [Name]) VALUES (1, N'PI19D')
INSERT [dbo].[Group] ([id], [Name]) VALUES (2, N'PI19G')
INSERT [dbo].[Group] ([id], [Name]) VALUES (4, N'PI20A')
INSERT [dbo].[Group] ([id], [Name]) VALUES (5, N'PI20B')
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([id], [Name], [Group_id], [Teacher_id]) VALUES (1, N'Matematika', 1, 8)
INSERT [dbo].[Subject] ([id], [Name], [Group_id], [Teacher_id]) VALUES (2, N'Matematika2', 1, 8)
INSERT [dbo].[Subject] ([id], [Name], [Group_id], [Teacher_id]) VALUES (3, N'Lietuviu k.', 1, 12)
INSERT [dbo].[Subject] ([id], [Name], [Group_id], [Teacher_id]) VALUES (4, N'Psichologija', 2, 12)
INSERT [dbo].[Subject] ([id], [Name], [Group_id], [Teacher_id]) VALUES (5, N'Programavimas', 4, 12)
INSERT [dbo].[Subject] ([id], [Name], [Group_id], [Teacher_id]) VALUES (6, N'Modulis1', NULL, 12)
INSERT [dbo].[Subject] ([id], [Name], [Group_id], [Teacher_id]) VALUES (7, N'Modulis2', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [name], [surname], [password], [user_Type], [group_id], [username]) VALUES (1, N'Vardas', N'Pavarde', N'123', N'User', 1, N'bagalam')
INSERT [dbo].[Users] ([id], [name], [surname], [password], [user_Type], [group_id], [username]) VALUES (3, N'Paulius', N'Velicka', N'123', N'User', 1, N'pauliukas')
INSERT [dbo].[Users] ([id], [name], [surname], [password], [user_Type], [group_id], [username]) VALUES (4, N'Vardenis', N'Pavardenis', N'123', N'User', 1, N'vardenis')
INSERT [dbo].[Users] ([id], [name], [surname], [password], [user_Type], [group_id], [username]) VALUES (6, N'Petras', N'Petraitis', N'123', N'User', 2, N'petraitis')
INSERT [dbo].[Users] ([id], [name], [surname], [password], [user_Type], [group_id], [username]) VALUES (7, N'Antanas', N'Antanaitis', N'123', N'User', 2, N'antanaitis')
INSERT [dbo].[Users] ([id], [name], [surname], [password], [user_Type], [group_id], [username]) VALUES (8, N'Mokytojas', N'Mokytojelis', N'123', N'Teacher', NULL, N'mokytojas')
INSERT [dbo].[Users] ([id], [name], [surname], [password], [user_Type], [group_id], [username]) VALUES (9, N'Andrius', N'Andriukaitis', N'123', N'User', 1, N'andriukas')
INSERT [dbo].[Users] ([id], [name], [surname], [password], [user_Type], [group_id], [username]) VALUES (10, N'Adminas', N'Adminaitis', N'123', N'Admin', NULL, N'admin')
INSERT [dbo].[Users] ([id], [name], [surname], [password], [user_Type], [group_id], [username]) VALUES (11, N'justas', N'justukas', N'justukas', N'User', 2, N'justas')
INSERT [dbo].[Users] ([id], [name], [surname], [password], [user_Type], [group_id], [username]) VALUES (12, N'Mokytojas2', N'Mokytojelis2', N'123', N'Teacher', NULL, N'mokytojas2')
INSERT [dbo].[Users] ([id], [name], [surname], [password], [user_Type], [group_id], [username]) VALUES (13, N'mokinys1', N'mokinukas1', N'mokinukas1', N'User', NULL, N'mokinys1')
INSERT [dbo].[Users] ([id], [name], [surname], [password], [user_Type], [group_id], [username]) VALUES (16, N'Mokinys5', N'Mokinukas5', N'Mokinukas5', N'User', 4, N'Mokinys5')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Group] FOREIGN KEY([Group_id])
REFERENCES [dbo].[Group] ([id])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Group]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Subject] FOREIGN KEY([Subject_id])
REFERENCES [dbo].[Subject] ([id])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Subject]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_User] FOREIGN KEY([Student_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_User]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Group] FOREIGN KEY([Group_id])
REFERENCES [dbo].[Group] ([id])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Group]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_User] FOREIGN KEY([Teacher_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_User]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_User_Group] FOREIGN KEY([group_id])
REFERENCES [dbo].[Group] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_User_Group]
GO
