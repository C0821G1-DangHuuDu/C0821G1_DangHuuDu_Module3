drop database if exists s02_thuchanh_quan_ly_sinh_vien;

create database s02_thuchanh_quan_ly_sinh_vien;

use s02_thuchanh_quan_ly_sinh_vien;

create table class (
class_id int primary key auto_increment,
class_name varchar(60) not null,
start_date datetime not null,
`status` bit
);
create table student (
student_id int primary key auto_increment,
student_name varchar(30) not null,
adress varchar(50),
phone varchar(20),
`status` bit,
class_class_id int,
foreign key (class_class_id) references class(class_id)
);
create table `subject` (
sub_id int primary key auto_increment,
sub_name varchar(30) not null,
credit tinyint not null default 1 check (credit>=1),
`status` bit default 1
);
create table mark (
mark_id int primary key auto_increment,
subject_sub_id int,
student_student_id int,
mark float default 0 check (mark>0 and mark <=100),
exam_times tinyint default 1,
foreign key (subject_sub_id) references `subject`(sub_id),
foreign key (student_student_id) references student(student_id)
);
