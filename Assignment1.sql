mysql> create table employee(employeeID int(10) not null primary key, employeeName varchar(50) not null, salary double double not null);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'double not null)' at line 1
mysql>  create table employee(employeeID int(10) not null primary key, employeeName varchar(50) not null, salary double not null);
Query OK, 0 rows affected, 1 warning (0.07 sec)

mysql> INSERT INTO employee VALUES (101, 'Rahul Sharma', 45000),
    -> (102, 'Priya Patel', 52000),
    ->  (103, 'Amit Kumar', 60000),
    -> (104, 'Neha Singh', 48000),
    -> (105, 'Vikas Gupta', 55000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        101 | Rahul Sharma |  45000 |
|        102 | Priya Patel  |  52000 |
|        103 | Amit Kumar   |  60000 |
|        104 | Neha Singh   |  48000 |
|        105 | Vikas Gupta  |  55000 |
+------------+--------------+--------+
5 rows in set (0.01 sec)

mysql> update employee set salary=70000 where employeeID=105;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        101 | Rahul Sharma |  45000 |
|        102 | Priya Patel  |  52000 |
|        103 | Amit Kumar   |  60000 |
|        104 | Neha Singh   |  48000 |
|        105 | Vikas Gupta  |  70000 |
+------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> update employee set employeeName='Rohit Sharma' where employeeID=101;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        101 | Rohit Sharma |  45000 |
|        102 | Priya Patel  |  52000 |
|        103 | Amit Kumar   |  60000 |
|        104 | Neha Singh   |  48000 |
|        105 | Vikas Gupta  |  70000 |
+------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> DELETE FROM employee WHERE employeeID = 105;
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM employee;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        101 | Rohit Sharma |  45000 |
|        102 | Priya Patel  |  52000 |
|        103 | Amit Kumar   |  60000 |
|        104 | Neha Singh   |  48000 |
+------------+--------------+--------+
4 rows in set (0.00 sec)

mysql> DELETE FROM employee;
Query OK, 4 rows affected (0.02 sec)

mysql> SELECT * FROM employee;
Empty set (0.00 sec)

mysql> INSERT INTO employee VALUES
    -> (101, 'Rahul Sharma', 45000),
    -> (102, 'Priya Patel', 52000),
    -> (103, 'Amit Kumar', 60000),
    -> (104, 'Neha Singh', 48000),
    -> (105, 'Vikas Gupta', 55000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> TRUNCATE TABLE employee;
Query OK, 0 rows affected (0.06 sec)

mysql> SELECT * FROM employee;
Empty set (0.00 sec)

mysql> DROP TABLE employee;
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE employee (
    ->     employeeID INT NOT NULL PRIMARY KEY,
    ->     employeeName VARCHAR(50) NOT NULL,
    ->     salary DOUBLE NOT NULL
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO employee VALUES
    -> (101, 'Rahul Sharma', 45000),
    -> (102, 'Priya Patel', 52000),
    -> (103, 'Amit Kumar', 60000),
    -> (104, 'Neha Singh', 48000),
    -> (105, 'Vikas Gupta', 55000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employee;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        101 | Rahul Sharma |  45000 |
|        102 | Priya Patel  |  52000 |
|        103 | Amit Kumar   |  60000 |
|        104 | Neha Singh   |  48000 |
|        105 | Vikas Gupta  |  55000 |
+------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> ALTER TABLE employee ADD email VARCHAR(100) NOT NULL;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(50)  | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| email        | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> ALTER TABLE employee MODIFY employeeName VARCHAR(100) NOT NULL;
Query OK, 5 rows affected (0.07 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> ^C
mysql> DESC employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| email        | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> ALTER TABLE employee DROP COLUMN email;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE employee RENAME TO employee_details;
Query OK, 0 rows affected (0.01 sec)

mysql> DESC employee_details;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE employee_details DROP PRIMARY KEY;
Query OK, 5 rows affected (0.07 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> DESC employee_details;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   |     | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE employee_details ADD CONSTRAINT PRIMARY KEY (employeeID);
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC employee_details;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
