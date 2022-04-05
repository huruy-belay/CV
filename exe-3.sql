create database ex3;
use ex3;

CREATE TABLE Musician(ssn int, name varchar(20), primary key(ssn));

CREATE TABLE Instrument(instrId int, dname varchar(20), Key_ins varchar(20),
primary key(instrId));

CREATE TABLE plays(ssn int, instrId int, primary key(ssn, instrId),
foreign key(ssn) references Musician(ssn), 
foreign key(instrId) references Instrument(instrId));

CREATE TABLE producer_Album ( albumIdentifier int, ssn int,
copyrightDate date, speed int, title varchar(30),primary key(albumIdentifier), 
foreign key(ssn) references Musician(ssn));

CREATE TABLE Songs_appears(songId int,albumIdentifier int,
 title varchar(20), author varchar(20), primary key(songId),
 foreign key(albumIdentifier) references producer_Album(albumIdentifier));
 
CREATE TABLE perform(ssn int, songId int, primary key(ssn, songId),
foreign key(ssn) references Musician(ssn),
foreign key(songId) references Songs_appears(songId));

CREATE TABLE place(address varchar(20), primary key(address)); 

CREATE TABLE home_contact(phone_no varchar(20),address varchar(20),
primary key(phone_no), foreign key(address) references Place(address));

CREATE TABLE Lives(ssn int, address varchar(20), phone_no varchar(20),
primary key(ssn, address), foreign key(ssn) references Musician(ssn),
foreign key(address) references home_contact(address),
foreign key(phone_no) references home_contact(phone_no));







