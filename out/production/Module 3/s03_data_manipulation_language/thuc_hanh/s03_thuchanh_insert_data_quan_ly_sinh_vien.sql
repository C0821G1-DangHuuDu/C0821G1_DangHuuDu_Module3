use s02_thuchanh_quan_ly_sinh_vien;
insert into class value (1,'A1','2008/12/20',1);
insert into class value (2,'A2','2008/12/22',1);
insert into class value (3,'B3',current_date(),1);
insert into student value (1,'Hung','Ha Noi','0912113113',1,1);
insert into student value (2,'Hoa','Hai Phong','',1,1);
insert into student value (3,'Manh','HCM','0123123123',0,2);
insert into `subject` value (1,'CF',5,1);
insert into `subject` value (2,'C',6,1);
insert into `subject` value (3,'HDJ',5,1);
insert into `subject` value (4,'RDBMS',10,1);
insert into mark value (1,1,1,8,1);
insert into mark value (2,1,2,10,2);
insert into mark value (3,2,1,12,1);


select * from student; -- Hiển thị danh sách tất cả các học viên.

select * from student where `status`=1;-- Hiển thị danh sách các học viên đang theo học.

select * from `subject` where credit<10;-- Hiển thị danh sách các môn học có thời gian học nhỏ hơn 10 giờ.

select s.student_id,s.student_name,c.class_name 
from student s
inner join class c on s.class_class_id = c.class_id
where class_name='A1'; -- Hiển thị danh sách học viên lớp A1.

select s.student_id,s.student_name,sub.sub_name,m.mark 
from student s
inner join mark m on s.student_id = m.student_student_id
inner join `subject` sub on m.subject_sub_id = sub.sub_id
where sub_name='CF'; -- Hiển thị điểm môn CF của các học viên. 

-- select * from `student`; 