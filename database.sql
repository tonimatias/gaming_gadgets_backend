drop database if exists gaming_gadgets;

create database gaming_gadgets;

use gaming_gadgets;

create Table category (
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) not NULL unique
);

create table product (
id int PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) not null,
price double (10,2) not null
);

insert into category (name) values ('Hiiret');

insert into category (name) values ('Näppäimistöt');

insert into category (name) values ('Kuulokkeet');
