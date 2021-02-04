# selection all column from table with conditions
select * 
	from table
where col1 = 10
	or col2 is not null
	or col3 <= 2000 and col1 = 20
 

# selection with replace name of column
select col1 as amount, col2 as price 
  from table


# inserted selection 
select *
	from (
		select col1 as name1, col2 as nam2
			from table
		) 
where name1 < 5000


# concat in PosgreSQL, Oracle, + in SQL Server
select col1 || 'some text' || col2 as result
	from table
where cond = 10


# concat in MySQL
select concat(col1, 'some text', col2) as result
	from table
where cond


# creating status col with if-else
select name, rate,
	case when rate <= 2000 then 'UNDERPAID'
		 when rate >= 4000 then 'OVERPAID'
		 else 'OK'
	end as status
from table


# limits str in MySQL or Posgre
select *
	from table limit 5


# random str from MySQL
select col1, col2 
	from table
order by rand() limit 5
# Posgre
select col1, col2 
	from table
order by random() limit 5


# Null -> 0
select coalesce(colx, 0)
	from table
# or
select case
		when colx is null then 0
		else colx
		end
	from table


# in col1 enters I or col2 ends ER
select col1, col2
	from table
where cond in (10, 20)
	and (col1 like '%I%' or col2 like '%ER')



 
  
