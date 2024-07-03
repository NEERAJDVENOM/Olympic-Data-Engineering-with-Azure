-- This is auto-generated code
use  Olympic;
IF OBJECT_ID('dbo.noc_regions', 'V') IS NOT NULL
    DROP VIEW dbo.noc_regions;
GO
CREATE VIEW noc_regions as 
SELECT
 *
FROM
    OPENROWSET(
        BULK 'https://datalake840.dfs.core.windows.net/olympic/noc_regions.csv',
        FORMAT = 'CSV',
        HEADER_ROW = TRUE,
        PARSER_VERSION = '2.0'
    ) AS [result];
