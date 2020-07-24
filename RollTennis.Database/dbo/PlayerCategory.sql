CREATE TABLE [dbo].[PlayerCategory]
(
	[PlayerCategoryId] INT IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
	[Name]				 VARCHAR(150),
	[Code]				 VARCHAR(2),
	[Description]		 VARCHAR(250),
	[ExpertiseLevel]	 INT NOT NULL,
	CONSTRAINT [PK_PlayerCategory] PRIMARY KEY CLUSTERED ([PlayerCategoryId] ASC) WITH (PAD_INDEX = ON, DATA_COMPRESSION = PAGE),
)
