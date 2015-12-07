use students

Create table Students
(
	StudentId int not null IDENTITY(1,1) Primary key,
	Name varchar(30) not null,
	Address varchar(30) not null,
	Photo image not null
);

select *from students