/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF '$(LoadTestData)' = 'true'

BEGIN

DELETE FROM Account;
DELETE FROM Log;

INSERT INTO Account (AccountNo, Fname, Lname, CreditLimit, Balance) VALUES
(1, 'Jackson', 'Hales', -50, 20),
(2, 'Kate', 'May', -50, 30);

INSERT INTO Log (OrigAcct, LogDatetime, RecAcct, Amount) VALUES
(1, '10/05/2018', NULL, $30),
(2, '10/05/2018', NULL, $50),
(1, '11/05/2018', 2, $30);

END;

