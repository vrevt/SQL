# Union tables
select col1 as str, col2 as int
	from table1
union all
select '-', 0
	from table2
union all
select c1, c2
	from table3
  
  
# Union with common column
select t1.col3, t2.col2
	from table1 t1, table2 t2
where t1.col1 = t2.col1 and t1.param = 'x'


# Union with common column
select t1.col3, t2.col2
	from table1 t1, table2 t2
where t1.col1 = t2.col1 and t1.param = 'x'
# or with using join
select t1.col3, t2.col2
	from table1 t1 join table2 t2
		on (t1.col1 = t2.col2)
where t1.param = 'x'
