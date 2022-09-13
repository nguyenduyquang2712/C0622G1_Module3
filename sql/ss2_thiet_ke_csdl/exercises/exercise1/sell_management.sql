DROP DATABASE IF EXISTS sell_management;
CREATE DATABASE sell_management;
USE sell_management;
CREATE TABLE customer(
cid INT PRIMARY KEY,
cname VARCHAR(20),
cage INT
);
CREATE TABLE `order`(
oid INT PRIMARY KEY,
cid INT,
FOREIGN KEY (cid) REFERENCES customer(cid),
odate DATE,
ototalprice DOUBLE
);
CREATE TABLE product(
pID INT PRIMARY KEY,
pname VARCHAR(20),
pprice DOUBLE
);
CREATE TABLE orderdetail(
oid INT,
FOREIGN KEY (oid) REFERENCES `order`(oid),
pid INT,
FOREIGN KEY (pid) REFERENCES product(pid),
odqty VARCHAR(45),
PRIMARY KEY (oid,pid)
);
