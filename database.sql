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
old_price double(10,2),
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


insert into product (name, price, old_price, description, category_id, image) values ('Logitech MX518', 29.90, 35.90, '16 000 DPI. Klassinen muotoilu kahdeksalla ohjelmoitavalla painikkeella', 1, 'logitech_mx518.jpeg');
insert into product (name, price, old_price, description, category_id, image) values ('Steelseries Rival 3', 39.90, null, 'Sopii oikeakätisille pelaajille. 16,8 miljoonan värin RGB valaistus. 60 miljoonan klikkauksen kytkimet', 1, 'steelseries_rival3.jpeg');
insert into product (name, price, old_price, description, category_id, image) values ('Logitech G Pro Wireless', 119.90, null, 'Kevyt ja kestävä pelihiiri. 16 000 DPI. Langaton LIGHTSPEED',1, 'logitech_g_pro.jpeg');
insert into product (name, price, old_price, description, category_id, image) values ('Logitech G305', 54.90, null, '12 000 DPI. Langaton LIGHTSPEED pelihiiri. Erittäin kevyt.',1, 'logitech_g305.jpeg');
insert into product (name, price,old_price, description, category_id, image) values ('Razer Basilisk Ultimate + lataustelakka', 189.90, null, 'Pitkä akunkesto, mukana lataustelakka. Jopa 20 000 DPI! Razer HyperSpeed -langaton teknologia',1, 'razer_basilisk_ultimate.jpeg');
insert into product (name, price,old_price, description, category_id, image) values ('Hyper X Pulsefire', 59.90, null, 'RGB efektit. Suurikokoiset rullat. Yksitoista painiketta, Omron-kytkimet', 1, 'hyperx_pulsefire.jpeg');


insert into product (name, price,old_price, description, category_id, image) values ('Corsair K63 Compacr', 89.90, null, 'Cherry MX -kytkimet. Suunniteltu tehopelaamiseen. Lisää tilaa ilman numeronäppäimistöä.', 2, 'corsair_k63.jpeg');
insert into product (name, price,old_price, description, category_id, image) values ('Blackstorm RGB Mech 2021 musta', 59.90, null, 'Bluetooth sekä USB yhteys. Yksilöllisesti ohjelmoitava valaistus.', 2, 'blackstorm_rgb_black.jpeg');
insert into product (name, price,old_price, description, category_id, image) values ('Blackstorm RGB Mech 2021 pinkki', 59.90, 69.90, 'Bluetooth sekä USB yhteys. Yksilöllisesti ohjelmoitava valaistus.', 2, 'blackstorm_rgb_pink.jpeg' );
insert into product (name, price,old_price, description, category_id, image) values ('Hyper X Alloy Origins 60', 119.90, null, 'Mekaaniset Hyper X Red -kytkimet. Harjattu alumiinirunko. 60 % näppäinasettelu.', 2, 'hyperx_alloy_origins.jpeg');
insert into product (name, price,old_price, description, category_id, image) values ('Blackstorm RGB 2022 Pudding 60% Dual Mode', 69.90, null, 'Bluetooth 5.0 sekä USB-yhteys. 80 miljoonan painalluksen elinkaari. Pudding Keycaps', 2, 'blackstorm_rgb_pudding.jpeg');
insert into product (name, price,old_price, description, category_id, image) values ('Corsair K95 Platinum', 179.90, null, 'Cherry Mx Brown -kytkimet. 8 Mt muisti. Anodisoitu, harjattu alumiinipinta', 2, 'corsair_k95.jpeg');



insert into product (name, price,old_price, description, category_id, image) values ('HyperX Cloud 2 Wireless Headset', 169.90, null, 'Langaton. Taajuusvaste 15 - 25 000 Hz. Suljettu rakenne vähentää taustamelua. Surrounding Sound 7.1 (PC/Mac)', 3, 'hyperx_cloud2_wireless.jpeg');
insert into product (name, price,old_price, description, category_id, image) values ('HyperX Cloud 2 Headset', 74.90, null, 'Langallinen. Taajuusvaste 15 - 25 000 Hz. Suljettu rakenne vähentää taustamelua. Surrounding Sound 7.1 (PC/Mac)', 3, 'hyperx_cloud2.jpeg');
insert into product (name, price,old_price, description, category_id, image) values ('EPOS Sennheiser PC 5 Chat', 19.90, null, '3.5 liitäntä. Melua vaimentava mikrofoni.', 3, 'epos_sennheiser.jpeg');
insert into product (name, price,old_price, description, category_id, image) values('Logitech G Pro X', 119.90, null, '50 mm PRO-G-kaiutinelementit. Ammattitason mikrofoni. Erityisesti PC-käyttöön.',3, 'logitech_g_prox.jpeg');
insert into product (name, price,old_price, description, category_id, image) values ('Sony Pulse 3D', 89.90, null, 'Langattomat pelikuulokkeet. Yhteensopivuus: PS5, PS4 ja PC.', 3, 'sony_pulse3d.jpeg');
insert into product (name, price,old_price, description, category_id, image) values ('Corsair HS70 PRO Wireless', 109.90, null, 'PS4 / PC. Virtuaalinen 7.1 ääni PC:llä. 16 tunnin akunkesto.', 3, 'corsair_hs70_pro.jpeg');


insert into product (name, price,old_price, description, category_id, image) values ('Gembird Gaming Mouse Pad S', 7.99, null, 'Koko: 200 x 250 x 3 mm. Liukumaton kumipohja.', 4, 'gembird_gaming_mouse_pad_s.jpeg');
insert into product (name, price,old_price, description, category_id, image) values ('Asus ROG Sheath', 39.99, null, 'Koko: 900 x 440 x 3 mm. Optimoitu hiiren sulavaan liukumiseen', 4, 'asus_rog_sheath.jpeg');
insert into product (name, price,old_price, description, category_id, image) values ('Gembird Gaming Mouse Pad M', 8.99, null, 'Koko: 250 x 350 x 3 mm. Liukumaton kumipohja.', 4, 'gembird_gaming_mouse_pad_m.jpeg');
insert into product (name, price,old_price, description, category_id, image) values ('Steelseries QcK', 23.99, null, 'Koko: 320 x 270 x 2 mm. Pehmeyttä ja tasaisuutta pelaamiseen. Vaativalle pelaajalle.', 4, 'steelseries_qck.jpeg');
insert into product (name, price,old_price, description, category_id, image) values ('Corsair MM100 Medium', 17.99, null, 'Koko: 320 x 270 x 3 mm. Kumipohja, kangaspinnoite.', 4, 'corsair_mm100_medium.jpeg');
insert into product (name, price, old_price, description, category_id, image) values ('Razer Sphex V3 Hard Gaming Mouse Mat', 12.99, 15.99,'Koko: 270 x 215 x 0,4 mm. Kaikille herkkyyksille ja sensoreille. Erittäin ohut.', 4, 'razer_sphex_v3_hard.jpeg');
