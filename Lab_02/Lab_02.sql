create schema LIBRARY;

use LIBRARY;

Create table PUBLISHER(
	Name            varchar(100)    not null,
    Address         varchar(100),
    Phone           varChar(12),
    constraint primary key(Name));
    
create table LIBRARY_BRANCH(
	Branch_id		int				not null,
    Branch_name		varChar(100)	not null,
    Address			varChar(100)	not null,
    constraint primary key(Branch_id));
    
create table BORROWER(
	Card_no			int				not null,
    Name			varChar(100)	not null,
    Address			varChar(100)	not null,
    Phone			varChar(100)	not null,
    constraint primary key(Card_no));
    
create table BOOK(
	Book_id 		int			 	not null,
    Title   		varchar(100) 	not null,
    Publisher_name 	varchar(100) 	not null,
	constraint primary key(Book_id),
    constraint foreign key (Publisher_name) references  PUBLISHER (Name));
    
create table BOOK_AUTHORS(
	Book_id			int 			not null,
    Author_name     varchar(100)    not null,
    constraint primary key(Book_id , Author_name),
    constraint foreign key (Book_id) references BOOK (Book_id));
    
create table BOOK_COPIES(
	Book_id			int 			not null,
    Branch_id     	int    			not null,
    No_of_copies	int 			not null,
    constraint primary key(Book_id , Branch_id),
    constraint foreign key (Book_id) references BOOK (Book_id),
    constraint foreign key (Branch_id) references LIBRARY_BRANCH (Branch_id));
    
create table BOOK_LOANS(
	Book_id			int 			not null,
    Branch_id     	int    			not null,
    Card_no			int				not null,
    Date_out		date 			not null,
    Due_date		date 			not null,
    constraint primary key(Book_id , Branch_id , Card_no),
    constraint foreign key (Book_id) references BOOK (Book_id),
    constraint foreign key (Branch_id) references LIBRARY_BRANCH (Branch_id),
    constraint foreign key (Card_no) references BORROWER (Card_no));