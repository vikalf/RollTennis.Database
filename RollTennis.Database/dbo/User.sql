CREATE TABLE [dbo].[User]
(
	[UserId]	   INT IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
	[FirstName]	   VARCHAR(30) NOT NULL,
	[LastName]	   VARCHAR(30) NOT NULL,
	[Email]		   VARCHAR(50) NOT NULL,
	[Phone]	       VARCHAR(20) NOT NULL,
	[Sex]	       VARCHAR(1) NOT NULL,
	[Address]	   VARCHAR(250) NOT NULL,
	[Age]	       INT NOT NULL,
	[Password]	   VARCHAR(50) NOT NULL,
	[PlayerCategoryId]  INT NOT NULL,
	[Active]	   BIT CONSTRAINT [DF_User_Active] DEFAULT(1) NOT NULL,
	CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([UserId] ASC) WITH (PAD_INDEX = ON, DATA_COMPRESSION = PAGE),
	CONSTRAINT [FK_User_PlayerCategory] FOREIGN KEY ([PlayerCategoryId]) REFERENCES [dbo].[PlayerCategory] ([PlayerCategoryId]) NOT FOR REPLICATION,
)
