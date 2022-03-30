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
price double (10,2) not null,
image VARCHAR(50),
category_id int not null,
index category_id (category_id),
FOREIGN key (category_id) REFERENCES category(id)
on delete RESTRICT
);

insert into category (name) values ('Hiiret');

insert into category (name) values ('Näppäimistöt');

insert into category (name) values ('Kuulokkeet');

insert into category (name) values ('Hiirimatot');
insert into product (name, price, image,  category_id) values ('Hiirimatto2',"images/hiiri.jpg", 120,4);
insert into product (name, price, category_id) values ('Hiirimatto3', 99,4);