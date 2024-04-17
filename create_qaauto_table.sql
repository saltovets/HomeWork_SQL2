create schema QAAUTO;
create table QAAUTO.car_brands(
id int primary key,
title varchar(255) not null);
create table QAAUTO.car_models(
id int primary key,
car_brend_id int,
foreign key (car_brend_id) references car_brands(id),
title varchar(255) not null );
create table QAAUTO.users (
id int primary key,
first_name varchar(255) not null,
last_name varchar(255) not null,
email varchar(255) not null,
pasword varchar(255) not null
);
create table QAAUTO.cars (
id int primary key,
user_id int,
foreign key (user_id) references users (id),
car_brend_id int,
foreign key (car_brend_id) references car_brands (id),
car_model_id int,
foreign key (car_model_id) references car_models (id),
mileage float,
initial_mileage float
);
insert INTO users (`id`, `first_name`, `last_name`, `email`, `pasword`) VALUES ('1', 'aa', 'ee', 'dg@kdj', '3435');
insert INTO users (`id`, `first_name`, `last_name`, `email`, `pasword`) VALUES ('2', 'Olga', 'Gud', 'hff@kdj', '3dxd');
insert INTO users (`id`, `first_name`, `last_name`, `email`, `pasword`) VALUES ('3', 'Petr', 'dk', 'dkjasjf@kdj', '543435');
insert INTO users (`id`, `first_name`, `last_name`, `email`, `pasword`) VALUES ('4', 'Siu', 'TERD', 'lkjg@kdj', 'fd35');
insert INTO users (`id`, `first_name`, `last_name`, `email`, `pasword`) VALUES ('5', 'Sem', 'TRED', 'duwl@kdj', '745kd5');
insert INTO car_brands(id,title) VALUES ('10','BMW'), ('20', 'Opel'), ('30','Mercedes'), ('40','Lexus'),('50','Mazda');
insert INTO car_models (id, car_brend_id,title) VALUES ('101','10','X1'), ('102','10', 'X2'), ('103','10','X3'), ('104','10','X5'),('105','10','X6');

delete from car_models where id in (101,102,103,104,105);
insert INTO car_models (id, car_brend_id,title) VALUES ('111','20','Vectra'), ('112','20', 'Vivaro'), ('113','20','Zafira'), ('114','20','Cargo');
insert INTO car_models (id, car_brend_id,title) VALUES ('121','30','Vito'), ('122','30', 'Xl'), ('123','30','sport'), ('124','30','X5lg'),('125','30','Sprinter');
insert INTO car_models (id, car_brend_id,title) VALUES ('131','40','NX'), ('132','40', 'RX'), ('133','40','GX'), ('134','40','ES'),('135','40','LS');
insert INTO car_models (id, car_brend_id,title) VALUES ('141','50','2'), ('142','50', '3'), ('143','50','5'), ('144','50','6'),('145','50','121');
select*from car_models;
select*from car_brands;
select*from users;
insert INTO cars (id,user_id,car_model_id,car_brend_id,mileage,initial_mileage) VALUES (301,'1','141','50','152','5'), (302,'1','142','50', '135','20'), (303,'5','134','40','287','54'), (304,'4','121','30','64','13'),(305,'3','135','40','121','53');
select*from cars;



