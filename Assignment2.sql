mysql>  select * from employee_details;
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

 mysql> Select * from employee_details limit 3;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        101 | Rahul Sharma |  45000 |
|        102 | Priya Patel  |  52000 |
|        103 | Amit Kumar   |  60000 |
+------------+--------------+--------+
3 rows in set (0.17 sec)

mysql>  select * from employee_details order by Salary;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        101 | Rahul Sharma |  45000 |
|        104 | Neha Singh   |  48000 |
|        102 | Priya Patel  |  52000 |
|        105 | Vikas Gupta  |  55000 |
|        103 | Amit Kumar   |  60000 |
+------------+--------------+--------+
5 rows in set (0.02 sec)

mysql> select * from employee_details order by salary desc limit 2;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        103 | Amit Kumar   |  60000 |
|        105 | Vikas Gupta  |  55000 |
+------------+--------------+--------+
2 rows in set (0.01 sec)

mysql> select * from customer;
+-------------+-------+--------+----------------------+------------+---------------+----------+
| customer_id | name  | city   | email                | phone_no   | address       | pin_code |
+-------------+-------+--------+----------------------+------------+---------------+----------+
| c101        | ayush | panvel | ayushjivale@gmai.com | 8796875523 | nirlon colony |   402109 |
| c102        | om    | mumbai | om@gmail.com         | 9978678789 | devad         |   420890 |
| c103        | raju  | diva   | raju@gmail.com       | 6789097654 | saidham       |   403897 |
| c104        | ravi  | alibag | ravi@gmail.com       | 8767890987 | alibag stand  |   768907 |
| c105        | sai   | thane  | sai@gmail.com        | 7869054321 | bus stand     |   654345 |
+-------------+-------+--------+----------------------+------------+---------------+----------+
5 rows in set (0.02 sec)

mysql> select distinct city from customer;
+--------+
| city   |
+--------+
| panvel |
| mumbai |
| diva   |
| alibag |
| thane  |
+--------+
5 rows in set (0.01 sec)

mysql> select * from customer where customer_id between 'c101' and  'c104';
+-------------+-------+--------+----------------------+------------+---------------+----------+
| customer_id | name  | city   | email                | phone_no   | address       | pin_code |
+-------------+-------+--------+----------------------+------------+---------------+----------+
| c101        | ayush | panvel | ayushjivale@gmai.com | 8796875523 | nirlon colony |   402109 |
| c102        | om    | mumbai | om@gmail.com         | 9978678789 | devad         |   420890 |
| c103        | raju  | diva   | raju@gmail.com       | 6789097654 | saidham       |   403897 |
| c104        | ravi  | alibag | ravi@gmail.com       | 8767890987 | alibag stand  |   768907 |
+-------------+-------+--------+----------------------+------------+---------------+----------+
4 rows in set (0.01 sec)

mysql> select * from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p104       |       50 |       10000 | cash         | 2026-06-06 00:00:00 | delivered    |
|      103 | c104        | p103       |       30 |       10000 | gpay         | 2026-07-01 00:00:00 | shipping     |
|      104 | c105        | p105       |       60 |       30000 | cash         | 2026-08-07 00:00:00 | delivered    |
|      105 | c101        | p101       |       40 |       25000 | cash         | 2026-07-06 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.02 sec)

mysql> select * from order_details where order_date between '2026-01-01' and '2026-07-01';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p104       |       50 |       10000 | cash         | 2026-06-06 00:00:00 | delivered    |
|      103 | c104        | p103       |       30 |       10000 | gpay         | 2026-07-01 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
3 rows in set (0.00 sec)

mysql> select * from order_details where order_date not between '2026-01-01' and '2026-07-01';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      104 | c105        | p105       |       60 |       30000 | cash         | 2026-08-07 00:00:00 | delivered    |
|      105 | c101        | p101       |       40 |       25000 | cash         | 2026-07-06 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
2 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+-------+--------+----------------------+------------+---------------+----------+
| customer_id | name  | city   | email                | phone_no   | address       | pin_code |
+-------------+-------+--------+----------------------+------------+---------------+----------+
| c101        | ayush | panvel | ayushjivale@gmai.com | 8796875523 | nirlon colony |   402109 |
| c102        | om    | mumbai | om@gmail.com         | 9978678789 | devad         |   420890 |
| c103        | raju  | diva   | raju@gmail.com       | 6789097654 | saidham       |   403897 |
| c104        | ravi  | alibag | ravi@gmail.com       | 8767890987 | alibag stand  |   768907 |
| c105        | sai   | thane  | sai@gmail.com        | 7869054321 | bus stand     |   654345 |
+-------------+-------+--------+----------------------+------------+---------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id in('c101','c102','c104');
+-------------+-------+--------+----------------------+------------+---------------+----------+
| customer_id | name  | city   | email                | phone_no   | address       | pin_code |
+-------------+-------+--------+----------------------+------------+---------------+----------+
| c101        | ayush | panvel | ayushjivale@gmai.com | 8796875523 | nirlon colony |   402109 |
| c102        | om    | mumbai | om@gmail.com         | 9978678789 | devad         |   420890 |
| c104        | ravi  | alibag | ravi@gmail.com       | 8767890987 | alibag stand  |   768907 |
+-------------+-------+--------+----------------------+------------+---------------+----------+
3 rows in set (0.00 sec)

mysql>  select * from customer where customer_id not in('c101','c102','c104');
+-------------+------+-------+----------------+------------+-----------+----------+
| customer_id | name | city  | email          | phone_no   | address   | pin_code |
+-------------+------+-------+----------------+------------+-----------+----------+
| c103        | raju | diva  | raju@gmail.com | 6789097654 | saidham   |   403897 |
| c105        | sai  | thane | sai@gmail.com  | 7869054321 | bus stand |   654345 |
+-------------+------+-------+----------------+------------+-----------+----------+
2 rows in set (0.02 sec)

mysql> select * from customer where city is null;
Empty set (0.00 sec)

mysql> select * from customer where city is not null;
+-------------+-------+--------+----------------------+------------+---------------+----------+
| customer_id | name  | city   | email                | phone_no   | address       | pin_code |
+-------------+-------+--------+----------------------+------------+---------------+----------+
| c101        | ayush | panvel | ayushjivale@gmai.com | 8796875523 | nirlon colony |   402109 |
| c102        | om    | mumbai | om@gmail.com         | 9978678789 | devad         |   420890 |
| c103        | raju  | diva   | raju@gmail.com       | 6789097654 | saidham       |   403897 |
| c104        | ravi  | alibag | ravi@gmail.com       | 8767890987 | alibag stand  |   768907 |
| c105        | sai   | thane  | sai@gmail.com        | 7869054321 | bus stand     |   654345 |
+-------------+-------+--------+----------------------+------------+---------------+----------+
5 rows in set (0.00 sec)


mysql>  select * from customer where city='thane' and address='lodha';
Empty set (0.00 sec)

mysql> select * from customer where city='thane' or address='devad';
+-------------+------+--------+---------------+------------+-----------+----------+
| customer_id | name | city   | email         | phone_no   | address   | pin_code |
+-------------+------+--------+---------------+------------+-----------+----------+
| c102        | om   | mumbai | om@gmail.com  | 9978678789 | devad     |   420890 |
| c105        | sai  | thane  | sai@gmail.com | 7869054321 | bus stand |   654345 |
+-------------+------+--------+---------------+------------+-----------+----------+
2 rows in set (0.00 sec)