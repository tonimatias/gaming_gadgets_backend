drop database if exists gaminggadgets;
create database gaminggadgets;
use gaminggadgets;
create Table category (
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) not NULL unique
);
create Table product (
id int PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) not null,
price double (10,2) not null
);

insert into category (name) values ('Hiiret');
insert into category (name) values ('Näppäimistöt');
insert into category (name) values ('Kuulokkeet');