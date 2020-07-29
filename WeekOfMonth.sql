DECLARE @thisdate date = '2020-07-29'

select
   (DATEPART(week, @thisdate) as WeekOfYear
   ,(DATEPART(week, @thisdate) - DATEPART(week, DATEADD(day, 1, EOMONTH(@thisdate, -1)))) + 1 as WeekOfMonth
