DROP DATABASE IF EXISTS employeee_db;

CREATE DATABASE employee_db;

create table department
(
    id   int auto_increment
        primary key,
    name varchar(30) not null
);

create table role
(
    id           int auto_increment
        primary key,
    title        varchar(30) not null,
    salary       decimal     not null,
    deparment_id int         not null,
    constraint department_id
        foreign key (deparment_id) references department (id)
);

create table employee
(
    id         int auto_increment
        primary key,
    first_name varchar(30) not null,
    last_name  varchar(30) not null,
    role_id    int         not null,
    manager_id int         null,
    constraint employee_manager_id_fk
        foreign key (manager_id) references employee (id),
    constraint employee_role_id_fk
        foreign key (role_id) references role (id)
);