SELECT * FROM sys.credentials; --List all the credentials
CREATE MASTER KEY;

--Create a credential to query noc_region view table
CREATE CREDENTIAL [https://datalake840.dfs.core.windows.net/olympic/noc_regions.csv]
WITH IDENTITY = 'SHARED ACCESS SIGNATURE', 
SECRET = 'sv=2022-11-02&ss=bfqt&srt=sco&sp=rwdlacupyx&se=2024-07-03T20:46:52Z&st=2024-07-03T12:46:52Z&spr=https,http&sig=3ptTLmujd77%2BTtQ5vKXlYbd4h%2FxBNZI6b3RSpMzixzw%3D';
;
--Create a credential to query events view table

CREATE CREDENTIAL [https://datalake840.dfs.core.windows.net/olympic/events.csv]
WITH IDENTITY = 'SHARED ACCESS SIGNATURE', 
SECRET = 'sv=2022-11-02&ss=bfqt&srt=sco&sp=rwdlacupyx&se=2024-07-03T20:46:52Z&st=2024-07-03T12:46:52Z&spr=https,http&sig=3ptTLmujd77%2BTtQ5vKXlYbd4h%2FxBNZI6b3RSpMzixzw%3D';
;
---Query for the existing user
SELECT USER_NAME();

select * from noc_regions;
select * from dbo.events;
