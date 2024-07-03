-- This is auto-generated code
use  Olympic;
IF OBJECT_ID('dbo.events', 'V') IS NOT NULL
    DROP VIEW dbo.events;
GO
CREATE VIEW events as 
SELECT
 *
FROM
    OPENROWSET(
        BULK 'https://datalake840.dfs.core.windows.net/olympic/events.csv',
        FORMAT = 'CSV',
        HEADER_ROW = TRUE,
        PARSER_VERSION = '2.0'
    ) AS [result];
