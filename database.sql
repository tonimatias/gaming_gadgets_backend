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
insert into product (name, price, description, category_id) values ('Logitech G305', 54.90, '12 000 DPI. Langaton LIGHTSPEED pelihiiri. Erittäin kevyt.',1);
insert into product (name, price, description, category_id) values ('Razer Basilisk Ultimate + lataustelakka', 189.90, 'Pitkä akunkesto, mukana lataustelakka. Jopa 20 000 DPI! Razer HyperSpeed -langaton teknologia',1);
insert into product (name, price, description, category_id) values ('Hyper X Pulsefire', 59.90, 'RGB efektit. Suurikokoiset rullat. Yksitoista painiketta, Omron-kytkimet', 1);


insert into product (name, price, description, category_id) values ('Corsair K63 Compacr', 89.90, 'Cherry MX -kytkimet. Suunniteltu tehopelaamiseen. Lisää tilaa ilman numeronäppäimistöä.', 2);
insert into product (name, price, description, category_id) values ('Blackstorm RGB Mech 2021 musta', 59.90, 'Bluetooth sekä USB yhteys. Yksilöllisesti ohjelmoitava valaistus.', 2);
insert into product (name, price, description, category_id) values ('Blackstorm RGB Mech 2021 pinkki', 59.90, 'Bluetooth sekä USB yhteys. Yksilöllisesti ohjelmoitava valaistus.', 2 );
insert into product (name, price, description, category_id) values ('Hyper X Alloy Origins 60', 119.90, 'Mekaaniset Hyper X Red -kytkimet. Harjattu alumiinirunko. 60 % näppäinasettelu.', 2);
insert into product (name, price, description, category_id) values ('Blackstorm RGB 2022 Pudding 60% Dual Mode', 69.90, 'Bluetooth 5.0 sekä USB-yhteys. 80 miljoonan painalluksen elinkaari. Pudding Keycaps', 2);
insert into product (name, price, description, category_id) values ('Corsair K95 Platinum', 179.90, 'Cherry Mx Brown -kytkimet. 8 Mt muisti. Anodisoitu, harjattu alumiinipinta', 2);



insert into product (name, price, description, category_id) values ('HyperX Cloud 2 Wireless Headset', 169.90, 'Langaton. Taajuusvaste 15 - 25 000 Hz. Suljettu rakenne vähentää taustamelua. Surrounding Sound 7.1 (PC/Mac)', 3);
insert into product (name, price, description, category_id) values ('HyperX Cloud 2 Headset', 74.90, 'Langallinen. Taajuusvaste 15 - 25 000 Hz. Suljettu rakenne vähentää taustamelua. Surrounding Sound 7.1 (PC/Mac)', 3);
insert into product (name, price, description, category_id) values ('EPOS Sennheiser PC 5 Chat', 19.90, '3.5 liitäntä. Melua vaimentava mikrofoni.', 3);
insert into product (name, price, description, category_id) values('Logitech G Pro X', 119.90, '50 mm PRO-G-kaiutinelementit. Ammattitason mikrofoni. Erityisesti PC-käyttöön.',3);
insert into product (name, price, description, category_id) values ('Sony Pulse 3D', 89.90, 'Langattomat pelikuulokkeet. Yhteensopivuus: PS5, PS4 ja PC.', 3);
insert into product (name, price, description, category_id) values ('Corsair HS70 PRO Wireless', 109.90, 'PS4 / PC. Virtuaalinen 7.1 ääni PC:llä. 16 tunnin akunkesto.', 3);

insert into product (name, price, description, category_id) values ();
insert into product (name, price, image,  category_id) values ('Hiirimatto2',120, "images/hiiri.jpg",4);
insert into product (name, price, category_id) values ('Hiirimatto3', 99,4);