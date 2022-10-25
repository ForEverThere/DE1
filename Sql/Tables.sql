create database DE

use DE
create table rooms
(
	id int primary key,
	name nvarchar(20)
);

use DE
create table students
(
	id int primary key,
	birthday datetime2,
	name nvarchar(50),
	sex char(1) check (sex in ('M','F')),
	room int foreign key references rooms(id)
);

create index roomsSpeed on rooms(id) include (name)
create index studentsSpeed on students(room) include (sex)