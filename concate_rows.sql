-- an example to concate rows by ','
DECLARE @t table
(
    Id int,
    Name varchar(10)
)
INSERT INTO @t
SELECT 1,'a' UNION ALL
SELECT 1,'b' UNION ALL
SELECT 2,'c' UNION ALL
SELECT 2,'d' 

SELECT 
  ID,
  (SELECT ','+ [Name] FROM @t WHERE Id = t.Id FOR XML PATH('')),
  STUFF(
  (
    SELECT ','+ [Name] FROM @t WHERE Id = t.Id FOR XML PATH('')
  ), 1, 1, '') 
FROM (SELECT DISTINCT ID FROM @t ) t