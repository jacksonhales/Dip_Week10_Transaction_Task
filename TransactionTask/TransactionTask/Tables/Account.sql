CREATE TABLE [dbo].[Account]
(
	[AccountNo] INT NOT NULL,
	[Fname] NVARCHAR(50) NOT NULL,
	[Lname] NVARCHAR(50) NOT NULL,
	[CreditLimit] MONEY NOT NULL,
	[Balance] MONEY NOT NULL,
	CONSTRAINT fk_Account PRIMARY KEY (AccountNo),
	CONSTRAINT uc_FnameLname UNIQUE (Fname, Lname),
	CONSTRAINT chk_CreditLimite CHECK (CreditLimit < 0),
	CONSTRAINT chk_Balance CHECK (Balance > CreditLimit)
)


