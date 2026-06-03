-- one to one relationship

create table passport(
s_no serial,
passport_id char(10) primary key,
expiry date default now()
)

create table users(
s_no serial,
username varchar(100) not null,
passport_id char(10),
foreign key(passport_id)
references passport(passport_id)
)

insert into passport(passport_id)
values('pa123'), ('pa234'), ('pa345'), ('pa456'), ('pa567')

insert into users (username, passport_id)
values('a', 'pa123'),
    ('b', 'pa234'),  
    ('c', 'pa345'),  
    ('d', 'pa456'), 
    ('e', 'pa567');  

select u.username, p.expiry from users u join passport p on u.passport_id = p.passport_id
