
drop database if exists register;
create database register;
use register;
drop table if exists Users;
create table Users(Id Integer primary key NOT NULL auto_increment,
FirstName varchar(20) NOT NULL,
LastName varchar(20) NOT NULL,
Age Integer(20) NOT NULL,
Gender varchar(5) NOT NULL,
Email varchar(50) NOT NULL,
UserName varchar(20) NOT NULL,
password varchar(20) NOT NULL);
