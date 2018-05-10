CREATE TABLE [dbo].[Log]
(
	[OrigAcct] INT NOT NULL,
	[LogDatetime] DATETIME NOT NULL,
	[RecAcct] INT,
	[Amount] MONEY NOT NULL,
	CONSTRAINT PK_Log PRIMARY KEY (OrigAcct, LogDateTime),
	CONSTRAINT FK_Log_Account FOREIGN KEY (OrigAcct) REFERENCES Account (AccountNo)
)


