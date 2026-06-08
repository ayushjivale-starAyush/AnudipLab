/*     
Create Database StudentManagementSystem

1.Create Table student

with attribute:  ●StudentID (Primary Key)
●Name
●Age
●Address


2.Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 
● StudentID (Foreign key) 
● Date 
● InstructorName 
● Feedback

Add 5 Records in table

 */

mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.04 sec)

mysql> use StudentManagementSystem;
Database changed

mysql> create table student(student_id varchar(10) not null primary key,Name varchar(50) not null,Age int not null,Address varchar(50) not null);
Query OK, 0 rows affected (0.05 sec)

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | varchar(10) | NO   | PRI | NULL    |       |
| Name       | varchar(50) | NO   |     | NULL    |       |
| Age        | int         | YES  |     | NULL    |       |
| Address    | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into student values('s101','Ayush Jivale',22,'panvel'),('s102','Raj Patil',22,'vashi'),('s103','Kunal Bhagat',21,'thane'),('s104','Anushka',21,'nashik'),('s105','atharva patil',22,'roha');
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+------------+---------------+------+---------+
| student_id | Name          | Age  | Address |
+------------+---------------+------+---------+
| s101       | Ayush Jivale  |   22 | panvel  |
| s102       | Raj Patil     |   22 | vashi   |
| s103       | Kunal Bhagat  |   21 | thane   |
| s104       | Anushka       |   21 | nashik  |
| s105       | atharva patil |   22 | roha    |
+------------+---------------+------+---------+
5 rows in set (0.01 sec)

mysql> create table feedback(feedback_id varchar(15) not null primary key,student_id varchar(10) not null,date date not null,insructor_name varchar(50) not null,feedback varchar(50) not null,foreign key(student_id) references student(student_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table feedback(feedback_id varchar(15) not null primary key,student_id varchar(10) not null,date date not null,insructor_name varchar(50) not null,feedback varchar(50) not null,foreign key(student_id) references student(student_id));
Query OK, 0 rows affected (0.06 sec)

mysql> desc feedback;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| feedback_id    | varchar(15) | NO   | PRI | NULL    |       |
| student_id     | varchar(10) | NO   | MUL | NULL    |       |
| date           | date        | NO   |     | NULL    |       |
| insructor_name | varchar(50) | NO   |     | NULL    |       |
| feedback       | varchar(50) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into feedback values('f101','s101','2025-06-01','Rohit Sharma','Excellent teaching'),('f102','s102','2025-06-02','Suraj Mehta','Very  supportive teacher'),('f103','s103','2025-06-03','Deepak Patel','Explains concepts nicely'),('f104','s104','2025-06-04','Dhruv Singh','Needs more practical explanation'),('f105','s105','2025-06-05','Janvi Joshi','Good classroom interaction');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from feedback;
+-------------+------------+------------+----------------+----------------------------------+
| feedback_id | student_id | date       | insructor_name | feedback                         |
+-------------+------------+------------+----------------+----------------------------------+
| f101        | s101       | 2025-06-01 | Rohit Sharma   | Excellent teaching               |
| f102        | s102       | 2025-06-02 | Suraj Mehta    | Very  supportive teacher         |
| f103        | s103       | 2025-06-03 | Deepak Patel   | Explains concepts nicely         |
| f104        | s104       | 2025-06-04 | Dhruv Singh    | Needs more practical explanation |
| f105        | s105       | 2025-06-05 | Janvi Joshi    | Good classroom interaction       |
+-------------+------------+------------+----------------+----------------------------------+
5 rows in set (0.00 sec)