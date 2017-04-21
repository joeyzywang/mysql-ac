create database if not exists trying;
use trying;

drop table if exists Person;

create table Person (
	PersonId int NOT NULL PRIMARY KEY,
	FirstName varchar(20),
	LastName varchar(20)
);

insert into Person ( PersonId, FirstName, LastName ) values ( 121, "Ming", "Xiao" );
insert into Person ( PersonId, FirstName, LastName ) values ( 122, "Chun", "Xiao" );
insert into Person ( PersonId, FirstName, LastName ) values ( 123, "Joe", "Li" );
insert into Person ( PersonId, FirstName, LastName ) values ( 124, "Leehome", "Wang" );
insert into Person ( PersonId, FirstName, LastName ) values ( 125, "Jay", "Chou" );
insert into Person ( PersonId, FirstName, LastName ) values ( 126, "Yinlin", "Cai" );
insert into Person ( PersonId, FirstName, LastName ) values ( 127, "Leon", "Li" );
insert into Person ( PersonId, FirstName, LastName ) values ( 128, "Jacky", "Chang" );

drop table if exists Address;

create table Address (
	AddressId int NOT NULL PRIMARY KEY,
	PersonId int,
	City varchar(50),
	State varchar(50)
);

insert into Address (AddressId, PersonId, City, State) values (1, 121, "Lehi", "Utah");
insert into Address (AddressId, PersonId, City, State) values (2, 123, "Seattle", "Washinton");
insert into Address (AddressId, PersonId, City, State) values (3, 122, "San Jose", "California");
insert into Address (AddressId, PersonId, City, State) values (4, 125, "San Francisco", "California");
insert into Address (AddressId, PersonId, City, State) values (5, 124, "New York", "Manhattan");
insert into Address (AddressId, PersonId, City, State) values (6, 126, "Seattle", "Washinton");

drop table if exists Employee_Salary;

create table Employee_Salary (
	Id int NOT NULL PRIMARY KEY,
	Salary int
);

insert into Employee_Salary (Id, Salary) values (1, 1000);
insert into Employee_Salary (Id, Salary) values (2, 2000);
insert into Employee_Salary (Id, Salary) values (3, 3000);
insert into Employee_Salary (Id, Salary) values (4, 4000);


drop table if exists Scores;

create table Scores (
	Id int NOT NULL PRIMARY KEY,
	Score float
);

insert into Scores (Id, Score) values (1, 1.1);
insert into Scores (Id, Score) values (2, 1.1);
insert into Scores (Id, Score) values (3, 1.2);
insert into Scores (Id, Score) values (4, 1.2);
insert into Scores (Id, Score) values (5, 1.2);
insert into Scores (Id, Score) values (6, 1.4);
insert into Scores (Id, Score) values (7, 1.4);
insert into Scores (Id, Score) values (8, 1.5);

