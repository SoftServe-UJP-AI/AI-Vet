drop database ai_vet;
create database ai_vet character set utf8 collate default;
use ai_vet;
create table client (
	id int not null,
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	client_pass varchar(255) not null,
    client_login varchar(255) not null,
    phone_number varchar(255) not null,
    description text,
	primary key (id),
    unique(client_pass, client_login)
);

create table doctor (
	id int not null,
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	doctor_pass varchar(255) not null,
    doctor_login varchar(255) not null,
    phone_number varchar(255) not null,
    description text,
    freetime_id int,
	primary key (id),
    unique(doctor_pass, doctor_login)
);
create table freetime (
	id int not null,
	week_date date not null,
    start_time time not null,
    end_time time not null,
    break_time time not null,
    doctor_id int not null,
	primary key (id)
);
create table appointment (
	id int not null,
    client_id int not null,
    doctor_id int not null,
	week_date date not null,
    start_time time not null,
    end_time time not null,
    description text not null,
	primary key (id)
);
create table notification(
	id int not null,
    client_id int not null,
    doctor_id int not null,
    message varchar(150) not null,
    primary key(id)
);