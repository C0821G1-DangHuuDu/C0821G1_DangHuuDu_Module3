use s02_thuchanh_quan_ly_sinh_vien;

-- Hiển thị số lượng sinh viên ở từng nơi
SELECT adress, COUNT(student_id) AS 'Số lượng học viên'
FROM student
GROUP BY adress;

-- Tính điểm trung bình các môn học của mỗi học viên
select s.student_id,s.student_name,avg(m.mark) as 'Điểm TB'
from student s
inner join mark m on s.student_id = m.student_student_id
inner join `subject` sub on m.subject_sub_id = sub.sub_id
group by s.student_id;

-- Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15
select s.student_id,s.student_name,avg(m.mark) as 'Điểm TB'
from student s
inner join mark m on s.student_id = m.student_student_id
inner join `subject` sub on m.subject_sub_id = sub.sub_id
group by s.student_id
having 'Điểm TB' >15;

-- Hiển thị thông tin các học viên có điểm trung bình lớn nhất.
select s.student_id,s.student_name,avg(m.mark) as 'Điểm TB'
from student s
inner join mark m on s.student_id = m.student_student_id
inner join `subject` sub on m.subject_sub_id = sub.sub_id
group by s.student_id
order by 'Điểm TB'
limit 1;