create schema phonebook;

use phonebook;

create table Person(
	Id 			varchar(5) primary key not null ,
    Pname 		varchar(40),
    Dob 		date,
    Paddress 	varchar(100));
    
create table Tel (
	Pid 		varchar(5),
	Tserial 	varchar (3),
	Telno 		varchar (15),
	constraint pk primary key (Pid, Tserial),
	constraint fk foreign key (Pid) references Person (Id));
    
insert into Person values (1,'john','1970-01-03','5 shore st.' );
insert into Tel values (1,1,'03-2245655' );
insert into Tel values (1,2,'012-6453242' );
insert into Person values (2,'mark','1967-07-08','5 shore st.' );
insert into Tel values (2,1,'03-8644353' );

select Id, Pname, Dob, Paddress, Tserial, Telno
from Person, Tel
where Id=Pid;

select Id, Pname, Dob, Paddress, Tserial, Telno
from Tel, Person
where Pid=Id;