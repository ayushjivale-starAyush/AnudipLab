 /*

Database Schema: Consider a simple database with one tables: BankAccount BankAccount

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.

*/


mysql>  Create database BankDB;
Query OK, 1 row affected (0.05 sec)

mysql> use BankDB;
Database changed
mysql> Create table BankAccount(account_id int not null primary key,account_holder_name varchar(50) not null, account_balance int not null);
Query OK, 0 rows affected (0.06 sec)

mysql> insert into BankAccount values(101,'ayush jivale',30000),(102,'raju yadav',50000),(103,'kunal bhagat',70000),(104,'anushkaa',45000),(105,'atharva',20000);
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> Select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | ayush jivale        |           30000 |
|        102 | raju yadav          |           50000 |
|        103 | kunal bhagat        |           70000 |
|        104 | anushkaa            |           45000 |
|        105 | atharva             |           20000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)


mysql>  Select account_holder_name , account_balance from BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| ayush jivale        |           30000 |
| raju yadav          |           50000 |
| kunal bhagat        |           70000 |
| anushkaa            |           45000 |
| atharva             |           20000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql>  Select account_holder_name , account_balance from BankAccount where account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| raju yadav          |           50000 |
| kunal bhagat        |           70000 |
| anushkaa            |           45000 |
+---------------------+-----------------+
3 rows in set (0.00 sec)

mysql> update BankAccount set account_balance = 80000 where account_id= 101;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> Select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | ayush jivale        |           80000 |
|        102 | raju yadav          |           50000 |
|        103 | kunal bhagat        |           70000 |
|        104 | anushkaa            |           45000 |
|        105 | atharva             |           20000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)