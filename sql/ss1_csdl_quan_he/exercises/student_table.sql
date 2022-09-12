CREATE DATABASE IF NOT EXISTS student_management;
USE student_management;
DROP TABLE IF EXISTS student;
CREATE TABLE `student` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
DROP TABLE IF EXISTS class;
CREATE TABLE class (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
DROP TABLE IF EXISTS teacher;
CREATE TABLE teacher (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
)
