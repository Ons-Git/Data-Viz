SELECT 
       [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      --,[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
      ,[SalesOrderNumber]
     -- ,[SalesOrderLineNumber]
     -- ,[RevisionNumber]
     -- ,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
     -- ,[UnitPriceDiscountPct]
     -- ,[DiscountAmount]
     -- ,[ProductStandardCost]
     -- ,[TotalProductCost]
      ,[SalesAmount]
      --,[TaxAmt]
     -- ,[Freight]
      --,[CarrierTrackingNumber]
    --  ,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
     -- ,[ShipDate]
  FROM [dbo].[FactInternetSales]
  --where 
  --left(OrderDateKey, 4 ) >= year(GETDATE()) - 2  --  ensures we always only brings two years of date from extraction
  order by 
  OrderDateKey asc  

