SELECT 
      c.customerkey as CustomerKey
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
     ,c.firstname as [FirstName],
	      c.lastname as [LastName],
     -- ,[MiddleName]
     c.firstname  + ' ' + lastname as [FULL Name],
     -- ,[NameStyle]
     -- ,[BirthDate]
     -- ,[MaritalStatus]
      --,[Suffix]
  CASE c.gender when 'M' then 'Male' WHEN 'F'THEN  'Female' end as Gender,
  --c.gender as test ,
     -- ,[EmailAddress]
     -- ,[YearlyIncome]
     -- ,[TotalChildren]
      --,[NumberChildrenAtHome]
     -- ,[EnglishEducation]
      --[SpanishEducation]
      --,[FrenchEducation]
     -- ,[EnglishOccupation]
      --,[SpanishOccupation]
     -- ,[FrenchOccupation]
     -- ,[HouseOwnerFlag]
     -- ,[NumberCarsOwned]
    --  ,[AddressLine1]
    --  ,[AddressLine2]
     -- ,[Phone]
      c.datefirstpurchase as DateFirstPurchase,
	  g.city as [Customer City]  -- Joined in customer City from Geography table 
      --,[CommuteDistance]
  FROM [dbo].[DimCustomer] as c 
  left join dbo.DimGeography as g on g.GeographyKey = c.GeographyKey 
  order by 
  CustomerKey ASC  -- ordered List by CustomerKey
