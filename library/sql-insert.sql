create table Users(FirstName varchar(255) NOT NULL,
   Surname varchar(255),
   Age int,
   Gender varchar(255),
   Email varchar(255),
   UserName varchar(255),
   Password varchar(255),
   UNIQUE(Username));


CREATE TABLE Books ( Id int NOT NULL AUTO_INCREMENT, 
   BookName varchar(255) NOT NULL, AuthorName varchar(255),
   ISBN varchar(255), 
   Publisher varchar(255), 
   TotalCopies int, 
   AvailableCopies int, PRIMARY KEY(Id) );

CREATE TABLE Checkout(transaction_id int not null auto_increment,
   book_id int, 
   username varchar(255),
   return_date date,
   primary key(transaction_id),
   foreign key(book_id) references Books(Id),
   foreign key(username) references Users(username));



insert into Users(FirstName,Surname,Age,Gender,email,UserName,Password)
values ('prachi','sule',29,'F','prachi@gmail.com','psule','welcome');

insert into Users(FirstName,Surname,Age,Gender,email,UserName,Password)
values ('rohit','bogarrapu',29,'M','rohit@gmail.com','rbogarrapu','welcome');

insert into Users(FirstName,Surname,Age,Gender,email,UserName,Password)
values ('john','joseph',31,'M','jjoseph@gmail.com','jjoseph','welcome');

insert into Users(FirstName,Surname,Age,Gender,email,UserName,Password)
values ('niraj','patil',29,'M','npatil@gmail.com','npatil','welcome');

insert into Users(FirstName,Surname,Age,Gender,email,UserName,Password)
values ('mohd','husein',29,'M','mdhusein@gmail.com','mdhusein','welcome');

insert into Users(FirstName,Surname,Age,Gender,email,UserName,Password)
values ('shashank','dongaonkar',29,'M','shashank@gmail.com','sdongaonkar','welcome');


select * from Books;

insert into Books(bookname, authorname,isbn,publisher,totalcopies,availablecopies)
values('The man who saw infinity','Dan Brown','123abc','McGrawHill',10, 9);

insert into Books(bookname, authorname,isbn,publisher,totalcopies,availablecopies)
values('Surely you are no joking Mr Feynman','Richard Feynman','456pqr','Tata',10, 10);

insert into Books(bookname, authorname,isbn,publisher,totalcopies,availablecopies)
values('Physics of the Impossible','Michio Kaku','1231abc','Springer',10, 10);

insert into Books(bookname, authorname,isbn,publisher,totalcopies,availablecopies)
values('Fermats last theorem','Simone Singh','12311231','Pearson',10,10);

insert into Books(bookname, authorname,isbn,publisher,totalcopies,availablecopies)
values('The secret','Rhonda Byrne','3211211','McGrawHill',10,10);

insert into Books(bookname, authorname,isbn,publisher,totalcopies,availablecopies)
values('Five point someone','Chetan Bhagat','7810231','McGrawHill',10,9);

insert into Books(bookname, authorname,isbn,publisher,totalcopies,availablecopies)
values('Vision 2020','Abdul Kalam','123199999','McGrawHill',10,8);

insert into Books(bookname, authorname,isbn,publisher,totalcopies,availablecopies)
values('Story of My Experiments with Truth','M K Gandhi','90009839','McGrawHill',10,9);

insert into Books(bookname, authorname,isbn,publisher,totalcopies,availablecopies)
values('City of Joy','Dominique Lapierre','7483912','McGrawHill',10,9);

insert into Books(bookname, authorname,isbn,publisher,totalcopies,availablecopies)
values('The Last Lecture','Randy Pausch','2312314','McGrawHill',10,10);


insert into Checkout(book_id,username,return_date) values('1','rbogarrapu',DATE_ADD(now(),Interval 1 MONTH));

insert into Checkout(book_id,username,return_date) values('6','jjoseph',DATE_ADD(now(),Interval 1 MONTH));

insert into Checkout(book_id,username,return_date) values('7','jjoseph',DATE_ADD(now(),Interval 1 MONTH));

insert into Checkout(book_id,username,return_date) values('7','npatil',DATE_SUB(now(),Interval 1 MONTH));

insert into Checkout(book_id,username,return_date) values('8','mdhusein',DATE_SUB(now(),Interval 1 MONTH));

insert into Checkout(book_id,username,return_date) values('9','psule',DATE_ADD(now(),Interval 1 MONTH));


alter table Checkout add constraint foreign key(book_id) references Books(Id);

alter table Checkout add constraint foreign key(username) references Users(username);


