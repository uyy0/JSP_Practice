create database JSPbookDB;

show databases;

use JSPbookDB;

create table if not exists Member(
	id varchar(20) not null primary key,
	pw  varchar(20),
    name varchar(30)
    );
    
    select * from Member;
    
    insert into Member(id,pw,name) values("id4","1234","namename");