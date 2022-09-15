drop database if exists quan_ly_sinh_vien;
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

-- SS4. Bài các hàm thông dụng trong SQL
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select * from `subject` where credit = (select max(credit) from subject);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select * from `subject`
join mark on `subject`.sub_id = mark.sub_id
where mark.mark = (select max(mark) from mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select student.*, avg (mark) as avarage_mark from student
join mark on student.student_id = mark.student_id
group by student.student_id
order by avg(mark) desc;