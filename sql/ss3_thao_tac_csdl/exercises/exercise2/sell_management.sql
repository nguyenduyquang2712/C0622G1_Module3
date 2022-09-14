DROP database if exists sell_manager;
CREATE database sell_manager;
USE sell_manager;
CREATE TABLE customer(
cid int auto_increment primary key,
`name` varchar(25),
age int);
CREATE TABLE `order`(
oid int auto_increment primary key,
cid int,
odate datetime,
ototal_price int,
foreign key(cid) references customer(cid));
CREATE TABLE  product(
pid int auto_increment primary key,
pname varchar(25),
price int);
CREATE TABLE order_detail(
oid int,
pid int,
odQTY int,
foreign key(oid) references `order`(oid),
foreign key(pid) references product(pid));
insert into customer( `name`,age)
value ("Minh Quan",10);
insert into customer( `name`, age)
value ("Ngoc Oanh",20);
insert into customer( `name`, age)
value ("Hong Ha",30);
insert into `order`(cid, odate, ototal_price)
value (1, "2006-3-21" , null);
insert into `order`(cid, odate, ototal_price)
value (2, "2006-3-23" , null);
insert into `order`(cid, odate, ototal_price)
value (1, "2006-3-16" , null);
insert into product(pname, price)
value ("May Giat" , 3);
insert into product(pname, price)
value ("Tu Lanh" , 5);
insert into product(pname, price)
value ("Dieu Hoa" , 7);
insert into product(pname, price)
value ("Quat" , 1);
insert into product(pname, price)
value ("Bep Dien" , 2);
insert into order_detail(oid, pid, odQTY)
value (1,1,3);
insert into order_detail(oid, pid, odQTY)
value (1,3,7);
insert into order_detail(oid, pid, odQTY)
value (1,4,2);
insert into order_detail(oid, pid, odQTY)
value (2,1,1);
insert into order_detail(oid, pid, odQTY)
value (3,1,8);
insert into order_detail(oid, pid, odQTY)
value (2,5,4);
insert into order_detail(oid, pid, odQTY)
value (2,3,3);
select oid , odate , ototal_price from `order`;
SELECT customer.`name` from customer 
JOIN `order` ON customer.cid = `order`.cid
group by customer.cid;

SELECT product.pname FROM product
JOIN order_detail ON product.pid = order_detail.pid
GROUP BY product.pname;

SELECT customer.`name` FROM customer 
WHERE customer.cid NOT IN (
SELECT `order`.cid from `order`);

SELECT `order`.oid, `order`.odate, SUM(order_detail.odqty*product.price) as total_order_price FROM `order`
JOIN order_detail ON `order`.oid = order_detail.oid
JOIN product ON product.pid = order_detail.pid
GROUP BY `order`.oid;

