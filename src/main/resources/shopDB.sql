CREATE DATABASE shop_db;

USE shop_db;

# В сущности users хранится информация о пользователях

create table users (
	id int auto_increment primary key,
    user_name varchar (30) NOT NULL,
	first_name varchar (30) NOT NULL,
    last_name varchar (30) NOT NULL,
	password int NOT NULL,
	email varchar (30) NOT NULL unique
);

# В сущности roles хранится список возможных ролей пользователей. 

create table roles (
	id int auto_increment primary key,
	name varchar(30) NOT NULL
);

INSERT INTO `shop_db`.`roles` (`id`, `name`) VALUES ('1', 'ROLE_USER');
INSERT INTO `shop_db`.`roles` (`id`, `name`) VALUES ('2', 'ROLE_ADMIN');

# Сущность users_roles нужна для записи ролей у пользователей...

create table users_roles (
	id int auto_increment primary key,
	user_id int,
    roles_id int, 
		foreign key (user_id) references users (id),
		foreign key (roles_id) references roles (id)
);

# Сущность product для записи информации о товарах

create table product (
	id int auto_increment primary key,
    name_product varchar(30) NOT NULL,
    price decimal (9,2) NOT NULL
    
);

# Сущность cart для записи информации о приобретённых или желаемых для приобретения товарах...

create table cart (
	id int auto_increment primary key,
	name_product varchar(30) NOT NULL,
    price decimal (9,2) NOT NULL
		
);