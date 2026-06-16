--many to many

create table studnts(
s_no serial,
student_name varchar(100) not null,
student_id char(5) primary key
)

create table coursera(
s_no serial,
course_name varchar(100) not null,
course_id char(5) primary key
)

create table junc(
st_id char(5),
co_id char(5),
foreign key(st_id) references studnts(student_id),
foreign key(co_id) references coursera(course_id)
)

insert into studnts(student_name, student_id)
values('abc', 'st123'),
('def', 'st234'),
('ghi', 'st345'),
('jkl', 'st456'),
('mno', 'st567'),
('pqr', 'st678'),
('stu', 'st789'),
('vwx', 'st890'),
('y', 'st901'),
('z', 'st012')

INSERT INTO coursera (course_name, course_id)
VALUES 
    ('cloud computing', 'cr123'),
    ('course name', 'cr234'),
    ('data science', 'cr345'),
    ('cyber security', 'cr456'),
    ('web dev', 'cr567'),
    ('devops basics', 'cr678'),
    ('ai models', 'cr789'),
    ('mobile apps', 'cr890'),
    ('ui ux design', 'cr901'),
    ('game design', 'cr012');

insert into junc(st_id, co_id)
values ('st123', 'cr123'),
('st123', 'cr234'),
('st234', 'cr234'),
('st123', 'cr345')

select c.course_name, s.student_name from coursera c join junc j on c.course_id = j.co_id join studnts s on s.student_id = j.st_id
