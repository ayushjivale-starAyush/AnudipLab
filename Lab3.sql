/*

Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order

*/

mysql> create database StudentInfo;
Query OK, 1 row affected (0.03 sec)

mysql> use StudentInfo;
Database changed

mysql>  create table student(stud_id int not null,FirstName varchar(50) not null,LastName varchar(50) not null,Phoneno int not null,Address varchar(100) not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc student;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| stud_id   | int          | NO   |     | NULL    |       |
| FirstName | varchar(50)  | NO   |     | NULL    |       |
| LastName  | varchar(50)  | NO   |     | NULL    |       |
| Phoneno   | int          | NO   |     | NULL    |       |
| Address   | varchar(100) | NO   |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
5 rows in set (0.02 sec)

mysql> create table student(stud_id int not null,FirstName varchar(50) not null,LastName varchar(50) not null,Age int not null,Phoneno varchar(20) not null,Address varchar(100) not null);
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO student VALUES
    -> (101,'Ayush','Jivale',22,'8796875523','Panvel'),
    -> (102,'Rahul','Sharma',21,'9876543210','Mumbai'),
    -> (103,'Priya','Patil',20,'9123456789','Pune'),
    -> (104,'Sneha','Kulkarni',23,'9988776655','Thane'),
    -> (105,'Amit','Deshmukh',22,'9871234567','Nashik');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+---------+-----------+----------+-----+------------+---------+
| stud_id | FirstName | LastName | Age | Phoneno    | Address |
+---------+-----------+----------+-----+------------+---------+
|     101 | Ayush     | Jivale   |  22 | 8796875523 | Panvel  |
|     102 | Rahul     | Sharma   |  21 | 9876543210 | Mumbai  |
|     103 | Priya     | Patil    |  20 | 9123456789 | Pune    |
|     104 | Sneha     | Kulkarni |  23 | 9988776655 | Thane   |
|     105 | Amit      | Deshmukh |  22 | 9871234567 | Nashik  |
+---------+-----------+----------+-----+------------+---------+
5 rows in set (0.00 sec)

mysql> Select * from student order by lastname asc;
+---------+-----------+----------+-----+------------+---------+
| stud_id | FirstName | LastName | Age | Phoneno    | Address |
+---------+-----------+----------+-----+------------+---------+
|     105 | Amit      | Deshmukh |  22 | 9871234567 | Nashik  |
|     101 | Ayush     | Jivale   |  22 | 8796875523 | Panvel  |
|     104 | Sneha     | Kulkarni |  23 | 9988776655 | Thane   |
|     103 | Priya     | Patil    |  20 | 9123456789 | Pune    |
|     102 | Rahul     | Sharma   |  21 | 9876543210 | Mumbai  |
+---------+-----------+----------+-----+------------+---------+
5 rows in set (0.01 sec)