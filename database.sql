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
description VARCHAR(200),
category_id int not null,
index category_id (category_id),
FOREIGN key (category_id) REFERENCES category(id)
on delete RESTRICT
);

insert into category (name) values ('Hiiret');

insert into category (name) values ('Näppäimistöt');

insert into category (name) values ('Kuulokkeet');

insert into category (name) values ('Hiirimatot');
insert into product (name, price, description, category_id) values ('Logitech MX518', 29.90, '16 000 DPI. Klassinen muotoilu kahdeksalla ohjelmoitavalla painikkeella', 1);
insert into product (name, price, description, category_id) values ('Steelseries Rival 3', 39.90, 'Sopii oikeakätisille pelaajille. 16,8 miljoonan värin RGB valaistus. 60 miljoonan klikkauksen kytkimet', 1);
insert into product (name, price, description, category_id) values ('Logitech G Pro Wireless', 119.90, 'Kevyt ja kestävä pelihiiri. 16 000 DPI. Langaton LIGHTSPEED',1);
insert into product (name, price, description, category_id) values ('Logitech G305', 54.90, '12 000 DPI. Langaton LIGHTSPEED pelihiiri. Erittäin kevyt.');




insert into product (name, price, image,  category_id) values ('Hiirimatto2',120, "images/hiiri.jpg",4);
insert into product (name, price, category_id) values ('Hiirimatto3', 99,4);