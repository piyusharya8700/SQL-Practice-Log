-- One-to-Many Relationship Implementation
create table channel(
    s_no serial,
    channel_id varchar(10) primary key,
    channel_name varchar(100)
);

create table videos(
    video_id varchar(5) primary key,
    video_name varchar(100) not null,
    channel_id varchar(10),
    foreign key(channel_id) references channel(channel_id)
);


insert into channel (channel_id, channel_name)
values ('C101', 'Tech Channel');

insert into videos (video_id, video_name, channel_id)
values('V01', 'iPhone Review', 'C101'),
('V02', 'Laptop Review', 'C101'), 
('V03', 'Camera Review', 'C101');


-- Verifying the One-to-Many relationship mapping
select c.channel_name, v.video_name 
from channel c 
join videos v on c.channel_id = v.channel_id;
