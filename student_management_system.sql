create database student_management_system;
use student_management_system; 

create table student2(
studentid int auto_increment primary key ,
studentname varchar(78) ,
gender varchar(14) ,
city varchar(50),
phone varchar(20) unique,
email varchar(30) unique
);


create table courses(
courseid int auto_increment primary key ,
coursename varchar(30),
fees decimal(20,3)
);

create table trainers(
trainerid int auto_increment primary key,
trainername varchar(30),
experience int
);

create table enrollments(
enrollmentid int auto_increment primary key,
studentid int,
courseid int,
enrollment date,
foreign key(studentid) references students(studentid),
foreign key(courseid) references courses(courseid)
);

create table course_trainers(
courseid int,
trainerid int,
foreign key(courseid) references courses(courseid),
foreign key(trainerid) references trainers(trainerid)
);

insert into student2(
studentname,gender,city,phone,email)
 VALUes
('Rahul ', 'Male', 'Hyderabad', '4433556677', 'rahul@gmail.com'),
('Priya ', 'Female', 'Mumbai', '9123456780', 'priya@gmail.com'),
(' Verma', 'Male', 'Delhi', '9988776655', 'verma@gmail.com'),
('Sneha Reddy', 'Female', 'Bengaluru', '9012345678', 'sreddy@gmail.com'),
('Arjun ', 'Male', 'Ahmedabad', '9871234567', 'arjun.@gmail.com'),
('Kavya ', 'Female', 'Chennai', '9765432109', 'kavya.@gmail.com'),
('Vikram ', 'Male', 'Jaipur', '9345678901', 'vikram.@gmail.com'),
('kumar', 'male', 'Kolkata', '9456781234', 'kumar@gmail.com'),
('Rohit ', 'Male', 'Pune', '9878901234', 'rohit@gmail.com'),
('Neha ', 'Female', 'Vizag', '8328503302', 'neha@gmail.com');

insert into courses(
coursename,fees)
values
('python','2000'),
('c','3000'),
('ml','2500'),
('sql','4000'),
('java','3500');

insert into trainers(
trainername,experience)
values
('shiva','3'),
('priya','2'),
('rahul','4');

select*from student2;
select*from student2
where city='vizag';
select*from student2;

select*from courses
where fees between 1000 and 3000;
select*from student2
where city in ('mumbai','chennai');
select*from student2
where studentname like'a%';
select count(*) from student2;
select avg(fees) from courses;
select max(gender) from student2;
select min(fees) from courses;
select sum(experience) from trainers;
select city, count(*) as
totalstudents
from student2
group by city;
select city, count(*) as
totalstudents
from student2
group by city
having count(*)>=1;
insert into student2(
studentname,gender,city,phone,email)
 VALUes
('ravi ', 'Male', 'Hyderabad', '5533221100','sunny@gmail.com');


