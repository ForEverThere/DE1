create procedure RoomsIns @json nvarchar(max) = ''
as
begin
	insert into rooms 
	select id, name from openjson (@json)
	with  
	(
		[id] int, 
		[name] nvarchar(20)
	);
end

go

create procedure StudentsIns @json nvarchar(max) = ''
as
begin
	insert into students select id, birthday, name, sex, room from openjson (@json)
	with  
	(
		[id] int,
		[birthday] datetime2,
		[name] nvarchar(50),
		[sex] char(1),
		[room] int
	);
end