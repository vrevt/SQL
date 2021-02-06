# sort desc - down, asc - up
select col1, col2, col3
	from table
where param = 1
order by col1 desc
# if any params:
order by col3, col1, col2 asc


# sort with case
select col1, col2, col3
	from table
order by case when col2 = 'value' then col3 else col1 end
#or
select col1, col2, col3, 
		case when col2 = 'value' then col3 else col1 end as ordered
	from table
order by ordered

