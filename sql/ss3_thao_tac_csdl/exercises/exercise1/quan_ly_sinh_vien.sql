create database quan_ly_sinh_vien;
use quan_ly_sinh_vien;
create table class (
class_id int primary key auto_increment,
class_name varchar(60) not null,
star_date datetime not null,
`status` bit -- bit chứa số từ 1 - 64 giá trị mặc định là 1
);
create table student (
student_id int primary key auto_increment,
student_name varchar(30) not null,
address varchar(50),
phone varchar(20),
`status` bit, -- bit chứa số từ 1 - 64 giá trị mặc định là 1
class_id int not null,
foreign key (class_id) references class(class_id)
);
create table `subject`(
sub_id int primary key auto_increment,
sub_name varchar(50),
credit tinyint not null default 1 check(credit >= 1),
status bit default 1
);
create table mark (
mark_id int primary key auto_increment,
sub_id int not null ,
student_id int not null ,
mark float default 0  check(mark between 0 and 100),
exam_times tinyint default 1,
unique (sub_id,student_id),
foreign key (sub_id) references `subject`(sub_id),
foreign key (student_id) references student(student_id)
);
use quan_ly_sinh_vien;
-- Thêm dữ liệu cho table class
insert into class (class_name,star_date,`status`) values ('A1', '2008-12-20', 1),
														 ('A2', '2008-12-22', 1),
                                                         ('B3', current_date, 0);
-- Thêm dữ liệu cho table student
insert into student (student_name,address,phone,`status`,class_id) values ('Hung', 'Ha Noi', '0912113113', 1, 1),
																		  ('Hoa', 'Hai phong', null, 1, 1),
                                                                          ('Manh', 'HCM', '0123123123', 0, 2);
-- Thêm dữ liệu cho table subject
insert into `subject` (sub_name,credit,`status`) values ('CF', 5, 1),
														('C', 6, 1),
														('HDJ', 5, 1),
														('RDBMS', 10, 1);
-- Thêm dữ liệu cho table market
insert into mark (sub_id,student_id,mark,exam_times) values (1, 1, 8, 1),
															(1, 2, 10, 2),
															(2, 1, 12, 1);
-- Hiển thị danh sách tất cả các học viên
select * from student ;
-- Hiển thị danh sách các học viên đang theo học.
select * from student where `status` = true;
-- Hiển thị danh sách các môn học có thời gian học nhỏ hơn 10 giờ.
select * from subject where credit < 10;
-- Hiển thị danh sách học viên lớp A1;
select student.student_id, student.student_name, class.class_name
from student
join class
on student.class_id = class.class_id
where class.class_name = "A1";															
-- Hiển thị điểm môn CF của các học viên.
select student.student_id,student.student_name,`subject`.sub_name,mark.mark
from student
join mark
on student.student_id = mark.student_id
join subject
on subject.sub_id = mark.sub_id
where subject.sub_name = "CF";		
-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
select * from student where student_name like "h%";
-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
select * from class where star_date >'2008-11-30';
-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
select * from subject where credit >=3 and credit <=5;
-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
set SQL_SAFE_UPDATES = 0;
update student set class_id =2
where student_name = "Hung";
set SQL_SAFE_UPDATES = 1;
-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần.
-- nếu trùng sắp theo tên tăng dần.
select student.student_name,subject.sub_name,mark.mark
from student
join mark
on student.student_id = mark.student_id
join subject
on subject.sub_id = mark.sub_id
order by mark desc, student.student_name;