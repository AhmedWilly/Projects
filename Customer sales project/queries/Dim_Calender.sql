SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date, 
  [EnglishDayNameOfWeek] as Day, 
  [WeekNumberOfYear] as WeekNo, 
  left([EnglishMonthName], 3) as Monthshort, 
  [MonthNumberOfYear] as MonthNo, 
  [CalendarQuarter] as Quarter, 
  [CalendarYear] as Year 
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
where 
  CalendarYear >= 2019;
