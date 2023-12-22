SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesTerritoryKey], 
  [SalesAmount] 
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales] 
where 
  left (OrderDateKey, 4) >= Year(
    GETDATE()
  ) -2 
order by 
  OrderDateKey asc
