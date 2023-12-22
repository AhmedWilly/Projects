SELECT 
  [CustomerKey] as CustomerKey, 
  [FirstName] as [First Name], 
  [LastName] as [Last Name], 
  firstname + ' ' + lastname as [Full Name], 
  case gender when 'm' then 'Male' when 'f' then 'Female' end as Gender, 
  datefirstpurchase as DateFirstPurchase, 
  city as [Customer City] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c 
  left join dbo.DimGeography as g on g.GeographyKey = c.GeographyKey 
order by 
  CustomerKey asc
