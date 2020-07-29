DECLARE @thisdate date = '2020-07-29'

select
   (DATEPART(week, @thisdate) as WeekOfYear
   ,(DATEPART(week, @thisdate) - DATEPART(week, DATEADD(day, 1, EOMONTH(@thisdate, -1)))) + 1 as WeekOfMonth
   ,case when DATEPART(weekday, @date_given) between 2 and 6 then 1 else 0 end as IS_WEEKDAY
   ,case when DATEPART(weekday, @date_given) in (1,7) then 1 else 0 end as IS_WEEKEND
