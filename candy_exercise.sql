show databases;

create database candy_db;

use candy_db;

show tables;

create table if not exists candies (
    id int unsigned auto_increment,
    name varchar(64) not null,
    price_in_cents int not null,
    description varchar(100) not null,
    primary key (id),
    foreign key (type_id) references (id)
);

create table if not exists types (
    id int unsigned not null auto_increment,
    name varchar(64) not null,
    description varchar(100) not null,
    primary key (id)
);

INSERT INTO types (name, description) VALUES
    ('Chewing Gum', 'Great for chewing!'),
    ('Chocolate', 'Great for chocolate goodness!'),
    ('Hard Candy', 'Don’‘t bite too hard!'),
    ('Gummy Candy', 'Not too hard; not too soft.');

INSERT INTO candies (name, price_in_cents, description, type_id) VALUES
    ('Doublemint Gum', 159, 'Standard chewing gum', 1),
    ('Orbit Gum', 110, 'Another standard chewing gum', 1),
    ('Hershey Bar', 210, 'Standard chocolate bar', 2),
    ('Gushers', 312, 'Nice and sour!', 4),
    ('Sour Patch Kids', 206, 'Quite sour!', 4),
    ('M&Ms', 199, 'Crunchy and chocolatey', 2);