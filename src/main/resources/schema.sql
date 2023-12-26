create schema if not exists myhomework;

create table myhomework.customers(
                          id int primary key auto_increment,
                          name varchar(255) not null,
                          surname varchar(255) not null,
                          age int,
                          phone_number varchar(255)
);

insert into myhomework.customers (name, surname, age, phone_number)
values ('Vladislav','Titar',26,'+79890909090'),
       ('Olga','Semenova',33,'+79990010101'),
       ('Dmitry','Zamulin',28,null),
       ('Nikolay','Lytnev',31,null),
       ('Alexey', 'Ivanov', 27, null);

create table myhomework.orders(
                       id int primary key auto_increment,
                       date date not null,
                       customer_id int not null,
                       product_name varchar(255) not null,
                       amount int not null,
                       foreign key (customer_id) references customers(id)
);

insert into myhomework.orders (date, customer_id, product_name, amount)
values (now(), 1, 'phone', 2),
       (now(), 2, 'PC', 1),
       (now(), 3, 'tablet', 3),
       (now(), 4, 'laptop', 2),
       (now(), 5, 'camera', 3);