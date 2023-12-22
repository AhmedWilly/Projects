SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] as productItemCode, 
  p.[EnglishProductName] as [Product Name], 
  pc.[EnglishProductCategoryName] as [Product Category], 
  ps.[EnglishProductSubCategoryName] as [Sub Category], 
  p.[Color] as [Product Color], 
  p.[Size] as [Product Size], 
  p.[ModelName] as [Product Model Name], 
  p.[EnglishDescription] as [Product Description], 
  isnull (p.Status, 'Outdated') as [Product Status] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as p 
  left join dbo.DimProductSubcategory as ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  left join dbo.DimProductcategory as pc on ps.ProductcategoryKey = pc.ProductcategoryKey 
order by 
  p.ProductKey asc
