use s02_thuchanh_quan_ly_sinh_vien;

-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’.alter
select *
from student s
where student_name like 'h%'; 

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12
select *
from class c
where month(start_date)=12;

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5
select *
from `subject` sub
where credit between 3 and 5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
SET SQL_SAFE_UPDATES=0;
update student 
set class_class_id = 2 
where  student_name = 'hung';
SET SQL_SAFE_UPDATES=1;

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
-- SET SQL_SAFE_UPDATES=0;
-- update mark 
-- set mark = 10 
-- where  student_student_id = 2;
-- SET SQL_SAFE_UPDATES=1;

select s.student_id,s.student_name,sub.sub_name,m.mark 
from student s
inner join mark m on s.student_id = m.student_student_id
inner join `subject` sub on m.subject_sub_id = sub.sub_id
order by m.mark desc,s.student_name;

