--1
create procedure task1xml as
begin
	select rooms.name[Room], count(students.id)[Number_of_students_in_the_room]
	from rooms join students on rooms.id = students.room
	group by rooms.name
	for xml auto
end

go

create procedure task1json as
begin
	select rooms.name[Room], count(students.id)[Number_of_students_in_the_room]
	from rooms join students on rooms.id = students.room
	group by rooms.name
	for json auto
end

go

--2
create procedure task2xml as
begin
	select top(5) rooms.name[Room], round(avg(floor(datediff(day, students.birthday, sysutcdatetime()) / 365.25)), 0)[Average_age_in_the_room]
	from rooms join students on rooms.id = students.room
	group by rooms.name
	order by [Average_age_in_the_room] asc
	for xml auto
end

go

create procedure task2json as
begin
	select top(5) rooms.name[Room], round(avg(floor(datediff(day, students.birthday, sysutcdatetime()) / 365.25)), 0)[Average_age_in_the_room]
	from rooms join students on rooms.id = students.room
	group by rooms.name
	order by [Average_age_in_the_room] asc
	for json auto
end

go

--3
create procedure task3xml as
begin
	select top(5) rooms.name[Room],
	max(datediff(day, students.birthday, sysutcdatetime()) / 365.25)-min(datediff(day, students.birthday, sysutcdatetime()) / 365.25)[Biggest_difference_between_students]
	from rooms join students on rooms.id = students.room
	group by rooms.name
	order by [Biggest_difference_between_students] desc
	for xml auto
end

go

create procedure task3json as
begin
	select top(5) rooms.name[Room],
	max(datediff(day, students.birthday, sysutcdatetime()) / 365.25)-min(datediff(day, students.birthday, sysutcdatetime()) / 365.25)[Biggest_difference_between_students]
	from rooms join students on rooms.id = students.room
	group by rooms.name
	order by [Biggest_difference_between_students] desc
	for json auto
end

go

--4
create procedure task4xml as
begin
	select distinct rooms.name[Room]
	from rooms join students on rooms.id = students.room
	group by rooms.name
	having count(students.sex) = 2
	order by rooms.name
	for xml auto
end

go

create procedure task4json as
begin
	select distinct rooms.name[Room]
	from rooms join students on rooms.id = students.room
	group by rooms.name
	having count(students.sex) = 2
	order by rooms.name
	for json auto
end