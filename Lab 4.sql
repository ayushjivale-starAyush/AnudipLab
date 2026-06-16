/*

Create database Studentmanagementsystem contain  "Student" table with the following a columns:StudentId,FirstName,lastName and "Course" table with the following a columns: CourseId,CourseName  and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).

You want to use inner join to generate a list of all possible student-course combinations.

*/


mysql> CREATE DATABASE Studentmanagementsystem;
Query OK, 1 row affected (0.02 sec)

mysql> USE Studentmanagementsystem;
Database changed
mysql> CREATE TABLE Student (StudentId INT PRIMARY KEY,FirstName VARCHAR(50), LastName VARCHAR(50));
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO Student VALUES((1, 'Ayush', 'Jivale'),(2, 'Rahul', 'Sharma'),(3, 'Priya', 'Patel');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> INSERT INTO Student VALUES((1, 'Ayush', 'Jivale'),(2, 'Rahul', 'Sharma'),(3, 'Priya', 'Patel'));
ERROR 1241 (21000): Operand should contain 1 column(s)
mysql> INSERT INTO Student VALUES(1, 'Ayush', 'Jivale'),(2, 'Rahul', 'Sharma'),(3, 'Priya', 'Patel');
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> Select * from student;
+-----------+-----------+----------+
| StudentId | FirstName | LastName |
+-----------+-----------+----------+
|         1 | Ayush     | Jivale   |
|         2 | Rahul     | Sharma   |
|         3 | Priya     | Patel    |
+-----------+-----------+----------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE Course (CourseId INT PRIMARY KEY,CourseName VARCHAR(50);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql>  CREATE TABLE Course (CourseId INT PRIMARY KEY,CourseName VARCHAR(50));
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO Course VALUES(101, 'SQL'),(102, 'Python'),(103, 'Power BI');
Query OK, 3 rows affected (0.04 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from employee;
ERROR 1146 (42S02): Table 'studentmanagementsystem.employee' doesn't exist
mysql> select * from course;
+----------+------------+
| CourseId | CourseName |
+----------+------------+
|      101 | SQL        |
|      102 | Python     |
|      103 | Power BI   |
+----------+------------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE Enrollment (EnrollmentID INT PRIMARY KEY,StudentID INT,CourseID INT, FOREIGN KEY (StudentID) REFERENCES Student(StudentId),FOREIGN KEY (CourseID) REFERENCES Course(CourseId));
Query OK, 0 rows affected (0.07 sec)

mysql> INSERT INTO Enrollment VALUES(1, 1, 101),(2, 1, 102),(3, 2, 101),(4, 3, 103);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from enrollment;
+--------------+-----------+----------+
| EnrollmentID | StudentID | CourseID |
+--------------+-----------+----------+
|            1 |         1 |      101 |
|            2 |         1 |      102 |
|            3 |         2 |      101 |
|            4 |         3 |      103 |
+--------------+-----------+----------+
4 rows in set (0.00 sec)

mysql> SELECT Student.StudentId,Student.FirstName,Student.LastName,Course.CourseId,Course.CourseName FROM Enrollment INNER JOIN Student ON Enrollment.StudentID = Student.StudentId INNER JOIN Course ON Enrollment.CourseID = Course.CourseId;
+-----------+-----------+----------+----------+------------+
| StudentId | FirstName | LastName | CourseId | CourseName |
+-----------+-----------+----------+----------+------------+
|         1 | Ayush     | Jivale   |      101 | SQL        |
|         1 | Ayush     | Jivale   |      102 | Python     |
|         2 | Rahul     | Sharma   |      101 | SQL        |
|         3 | Priya     | Patel    |      103 | Power BI   |
+-----------+-----------+----------+----------+------------+
4 rows in set (0.00 sec)