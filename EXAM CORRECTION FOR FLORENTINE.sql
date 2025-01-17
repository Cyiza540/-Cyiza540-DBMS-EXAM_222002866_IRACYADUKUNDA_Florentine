Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 16
Server version: 8.0.21 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database customers;
Query OK, 1 row affected (0.01 sec)
mysql> use customers;
Database changed
mysql> create table client_master( ClientNO varchar(40) primary key,name varchar(50), Address varchar(30),City varchar(30), bal_due decimal(10,2));
Query OK, 0 rows affected (0.01 sec)

mysql> show tables
    -> ;
+---------------------+
| Tables_in_customers |
+---------------------+
| client_master       |
+---------------------+
1 row in set (0.00 sec)




mysql> insert into client_master values('C002','MANZI MUSA','MH292','MUHANGA',500000),('C003','GIKUNDIRO EMELINE','KG123','KIGALI',31000),('C004','IZERE ALINE','123 MZ 002','MUSAMZE',12000)
    -> ;
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from client_master;
+----------+-------------------+------------+---------+-----------+
| ClientNO | name              | Address    | City    | bal_due   |
+----------+-------------------+------------+---------+-----------+
| C001     | NIYIGENA ERIC     | KN2123     | KIGALI  |   4500.00 |
| C002     | MANZI MUSA        | MH292      | MUHANGA | 500000.00 |
| C003     | GIKUNDIRO EMELINE | KG123      | KIGALI  |  31000.00 |
| C004     | IZERE ALINE       | 123 MZ 002 | MUSAMZE |  12000.00 |
+----------+-------------------+------------+---------+-----------+
4 rows in set (0.00 sec)

mysql> insert into client_master values('C005','IRADUKUNDA OLIVIER','N/A','NYAGATARE',100000);
Query OK, 1 row affected (0.00 sec)

mysql> select * from client_master;
+----------+--------------------+------------+-----------+-----------+
| ClientNO | name               | Address    | City      | bal_due   |
+----------+--------------------+------------+-----------+-----------+
| C001     | NIYIGENA ERIC      | KN2123     | KIGALI    |   4500.00 |
| C002     | MANZI MUSA         | MH292      | MUHANGA   | 500000.00 |
| C003     | GIKUNDIRO EMELINE  | KG123      | KIGALI    |  31000.00 |
| C004     | IZERE ALINE        | 123 MZ 002 | MUSAMZE   |  12000.00 |
| C005     | IRADUKUNDA OLIVIER | N/A        | NYAGATARE | 100000.00 |
+----------+--------------------+------------+-----------+-----------+
5 rows in set (0.00 sec)

mysql> select name from client_master where bal_due>5000;
+--------------------+
| name               |
+--------------------+
| MANZI MUSA         |
| GIKUNDIRO EMELINE  |
| IZERE ALINE        |
| IRADUKUNDA OLIVIER |
+--------------------+
4 rows in set (0.01 sec)

mysql> update client_master set bal_due=8000 where clientNO='c003';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from client_master;
+----------+--------------------+------------+-----------+-----------+
| ClientNO | name               | Address    | City      | bal_due   |
+----------+--------------------+------------+-----------+-----------+
| C001     | NIYIGENA ERIC      | KN2123     | KIGALI    |   4500.00 |
| C002     | MANZI MUSA         | MH292      | MUHANGA   | 500000.00 |
| C003     | GIKUNDIRO EMELINE  | KG123      | KIGALI    |   8000.00 |
| C004     | IZERE ALINE        | 123 MZ 002 | MUSAMZE   |  12000.00 |
| C005     | IRADUKUNDA OLIVIER | N/A        | NYAGATARE | 100000.00 |
+----------+--------------------+------------+-----------+-----------+
5 rows in set (0.00 sec)

mysql>  rename table client_master to Client12;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from client12;
+----------+--------------------+------------+-----------+-----------+
| ClientNO | name               | Address    | City      | bal_due   |
+----------+--------------------+------------+-----------+-----------+
| C001     | NIYIGENA ERIC      | KN2123     | KIGALI    |   4500.00 |
| C002     | MANZI MUSA         | MH292      | MUHANGA   | 500000.00 |
| C003     | GIKUNDIRO EMELINE  | KG123      | KIGALI    |   8000.00 |
| C004     | IZERE ALINE        | 123 MZ 002 | MUSAMZE   |  12000.00 |
| C005     | IRADUKUNDA OLIVIER | N/A        | NYAGATARE | 100000.00 |
+----------+--------------------+------------+-----------+-----------+
5 rows in set (0.00 sec)

mysql> select bal_due as BALANCE from Client12;
+-----------+
| BALANCE   |
+-----------+
|   4500.00 |
| 500000.00 |
|   8000.00 |
|  12000.00 |
| 100000.00 |
+-----------+
5 rows in set (0.00 sec)

mysql>
#PART 2


QUEstion 6

Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 17
Server version: 8.0.21 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create DATABASE school;
ERROR 1007 (HY000): Can't create database 'school'; database exists
mysql> create DATABASE college;
Query OK, 1 row affected (0.01 sec)

mysql> use college;
Database changed
mysql> CREATE TABLE DEPARTMENTS ( DeptID INT PRIMARY KEY, DeptName VARCHAR(50), DEptLocation VARCHAR(50),DeptManager VARCHAR(50);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> CREATE TABLE DEPARTMENTS ( DeptID INT PRIMARY KEY, DeptName VARCHAR(50), DEptLocation VARCHAR(50),DeptManager VARCHAR(50));
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE EMPLOYEES ( EMPID INT PRIMARY KEY auto_increment, EmpName VARCHAR(50), EmpOccupation VARCHAR(50) Empsalary decimal(10,2));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Empsalary decimal(10,2))' at line 1
mysql> CREATE TABLE EMPLOYEES ( EMPID INT PRIMARY KEY auto_increment, EmpName VARCHAR(50), EmpOccupation VARCHAR(50), Empsalary decimal(10,2));
Query OK, 0 rows affected (0.01 sec)

mysql> insert int employee( EmpName , EmpOccupation, Empsalary)values("MANZI Hussen","HOD",12000);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'int employee( EmpName , EmpOccupation, Empsalary)values("MANZI Hussen","HOD",120' at line 1
mysql> insert into employee( EmpName , EmpOccupation, Empsalary)values("MANZI Hussen","HOD",12000);
ERROR 1146 (42S02): Table 'college.employee' doesn't exist
mysql> insert into employees( EmpName , EmpOccupation, Empsalary)values("MANZI Hussen","HOD",12000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees( EmpName , EmpOccupation, Empsalary)values("MUGISHA NATHAN","CA",133000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees( EmpName , EmpOccupation, Empsalary)values("MUTUJE GANZA AIME","HR",25000000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees( EmpName , EmpOccupation, Empsalary)values("GABIRO JUSTUS","SUPERVISOr",8200000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees( EmpName , EmpOccupation, Empsalary)values("UWASE MARIE CHANTAL","CASHIER",8200000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into  DEPARTMENTS ( DeptName, DEptLocation ,DeptManager) values('BIT','UR HUYE','MUGABE ROBERT'),('LTM','UR HUYE','IRERE EMACLUE'),('HND','UR REMERA','RUMURI ELIE'),('PHARMACY','UR HUYE','IMENA ELINE')('CE','UR NYAGATARE','MUGISHA AIMABLE');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '('CE','UR NYAGATARE','MUGISHA AIMABLE')' at line 1
mysql> insert into  DEPARTMENTS ( DeptName, DEptLocation ,DeptManager) values('BIT','UR HUYE','MUGABE ROBERT'),('LTM','UR HUYE','IRERE EMACLUE'),('HND','UR REMERA','RUMURI ELIE'),('PHARMACY','UR HUYE','IMENA ELINE'),('CE','UR NYAGATARE','MUGISHA AIMABLE');
ERROR 1062 (23000): Duplicate entry '0' for key 'departments.PRIMARY'
mysql> select * from department;
ERROR 1146 (42S02): Table 'college.department' doesn't exist
mysql> select * from departments;
+--------+----------+--------------+---------------+
| DeptID | DeptName | DEptLocation | DeptManager   |
+--------+----------+--------------+---------------+
|      0 | BIT      | UR HUYE      | MUGABE ROBERT |
+--------+----------+--------------+---------------+
1 row in set (0.00 sec)

mysql> alter table depertments change deptid deptid varchar(10);
ERROR 1146 (42S02): Table 'college.depertments' doesn't exist
mysql> alter table departments change deptid deptid varchar(10);
Query OK, 1 row affected (0.03 sec)
Records: 1  Duplicates: 0  Warnings: 0

mysql> insert into  DEPARTMENTS values('1','BIT','UR HUYE','MUGABE ROBERT'),('2','LTM','UR HUYE','IRERE EMACLUE'),('3','HND','UR REMERA','RUMURI ELIE'),('4','PHARMACY','UR HUYE','IMENA ELINE'),('5','CE','UR NYAGATARE','MUGISHA AIMABLE');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from departments;
+--------+----------+--------------+-----------------+
| deptid | DeptName | DEptLocation | DeptManager     |
+--------+----------+--------------+-----------------+
| 0      | BIT      | UR HUYE      | MUGABE ROBERT   |
| 1      | BIT      | UR HUYE      | MUGABE ROBERT   |
| 2      | LTM      | UR HUYE      | IRERE EMACLUE   |
| 3      | HND      | UR REMERA    | RUMURI ELIE     |
| 4      | PHARMACY | UR HUYE      | IMENA ELINE     |
| 5      | CE       | UR NYAGATARE | MUGISHA AIMABLE |
+--------+----------+--------------+-----------------+
6 rows in set (0.00 sec)

mysql> delete from department where deptid=1;
ERROR 1146 (42S02): Table 'college.department' doesn't exist
mysql> delete from departments where deptid=1;
Query OK, 1 row affected (0.03 sec)

mysql> select * from departments;
+--------+----------+--------------+-----------------+
| deptid | DeptName | DEptLocation | DeptManager     |
+--------+----------+--------------+-----------------+
| 0      | BIT      | UR HUYE      | MUGABE ROBERT   |
| 2      | LTM      | UR HUYE      | IRERE EMACLUE   |
| 3      | HND      | UR REMERA    | RUMURI ELIE     |
| 4      | PHARMACY | UR HUYE      | IMENA ELINE     |
| 5      | CE       | UR NYAGATARE | MUGISHA AIMABLE |
+--------+----------+--------------+-----------------+
5 rows in set (0.00 sec)

mysql> update departments set deptid=1 where deptname='bit';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from departments;
+--------+----------+--------------+-----------------+
| deptid | DeptName | DEptLocation | DeptManager     |
+--------+----------+--------------+-----------------+
| 1      | BIT      | UR HUYE      | MUGABE ROBERT   |
| 2      | LTM      | UR HUYE      | IRERE EMACLUE   |
| 3      | HND      | UR REMERA    | RUMURI ELIE     |
| 4      | PHARMACY | UR HUYE      | IMENA ELINE     |
| 5      | CE       | UR NYAGATARE | MUGISHA AIMABLE |
+--------+----------+--------------+-----------------+
5 rows in set (0.00 sec)

mysql> desc employees;
+---------------+---------------+------+-----+---------+----------------+
| Field         | Type          | Null | Key | Default | Extra          |
+---------------+---------------+------+-----+---------+----------------+
| EMPID         | int           | NO   | PRI | NULL    | auto_increment |
| EmpName       | varchar(50)   | YES  |     | NULL    |                |
| EmpOccupation | varchar(50)   | YES  |     | NULL    |                |
| Empsalary     | decimal(10,2) | YES  |     | NULL    |                |
+---------------+---------------+------+-----+---------+----------------+
4 rows in set (0.01 sec)

mysql> alter table employees add deptid varchar(10) before empid;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'before empid' at line 1
mysql> alter table employees add deptid varchar(10) after empid;
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employments;
ERROR 1146 (42S02): Table 'college.employments' doesn't exist
mysql> select * from employees;
+-------+--------+---------------------+---------------+-------------+
| EMPID | deptid | EmpName             | EmpOccupation | Empsalary   |
+-------+--------+---------------------+---------------+-------------+
|     1 | NULL   | MANZI Hussen        | HOD           |    12000.00 |
|     2 | NULL   | MUGISHA NATHAN      | CA            |   133000.00 |
|     3 | NULL   | MUTUJE GANZA AIME   | HR            | 25000000.00 |
|     4 | NULL   | GABIRO JUSTUS       | SUPERVISOr    |  8200000.00 |
|     5 | NULL   | UWASE MARIE CHANTAL | CASHIER       |  8200000.00 |
+-------+--------+---------------------+---------------+-------------+
5 rows in set (0.00 sec)

mysql> update employees  set deptid=1 where empid='1';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employees;
+-------+--------+---------------------+---------------+-------------+
| EMPID | deptid | EmpName             | EmpOccupation | Empsalary   |
+-------+--------+---------------------+---------------+-------------+
|     1 | 1      | MANZI Hussen        | HOD           |    12000.00 |
|     2 | NULL   | MUGISHA NATHAN      | CA            |   133000.00 |
|     3 | NULL   | MUTUJE GANZA AIME   | HR            | 25000000.00 |
|     4 | NULL   | GABIRO JUSTUS       | SUPERVISOr    |  8200000.00 |
|     5 | NULL   | UWASE MARIE CHANTAL | CASHIER       |  8200000.00 |
+-------+--------+---------------------+---------------+-------------+
5 rows in set (0.00 sec)

mysql> select * from employments;
ERROR 1146 (42S02): Table 'college.employments' doesn't exist
mysql> select * from employees;
+-------+--------+---------------------+---------------+-------------+
| EMPID | deptid | EmpName             | EmpOccupation | Empsalary   |
+-------+--------+---------------------+---------------+-------------+
|     1 | 1      | MANZI Hussen        | HOD           |    12000.00 |
|     2 | NULL   | MUGISHA NATHAN      | CA            |   133000.00 |
|     3 | NULL   | MUTUJE GANZA AIME   | HR            | 25000000.00 |
|     4 | NULL   | GABIRO JUSTUS       | SUPERVISOr    |  8200000.00 |
|     5 | NULL   | UWASE MARIE CHANTAL | CASHIER       |  8200000.00 |
+-------+--------+---------------------+---------------+-------------+
5 rows in set (0.00 sec)

mysql> select * from employments;
ERROR 1146 (42S02): Table 'college.employments' doesn't exist
mysql> select * from departments;
+--------+----------+--------------+-----------------+
| deptid | DeptName | DEptLocation | DeptManager     |
+--------+----------+--------------+-----------------+
| 1      | BIT      | UR HUYE      | MUGABE ROBERT   |
| 2      | LTM      | UR HUYE      | IRERE EMACLUE   |
| 3      | HND      | UR REMERA    | RUMURI ELIE     |
| 4      | PHARMACY | UR HUYE      | IMENA ELINE     |
| 5      | CE       | UR NYAGATARE | MUGISHA AIMABLE |
+--------+----------+--------------+-----------------+
5 rows in set (0.00 sec)

mysql> update employees  set deptid=4 where empid='3';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employees  set deptid=1 where empid='2';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employees  set deptid=1 where empid='5';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employees  set deptid=3 where empid='4';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employees;
+-------+--------+---------------------+---------------+-------------+
| EMPID | deptid | EmpName             | EmpOccupation | Empsalary   |
+-------+--------+---------------------+---------------+-------------+
|     1 | 1      | MANZI Hussen        | HOD           |    12000.00 |
|     2 | 1      | MUGISHA NATHAN      | CA            |   133000.00 |
|     3 | 4      | MUTUJE GANZA AIME   | HR            | 25000000.00 |
|     4 | 3      | GABIRO JUSTUS       | SUPERVISOr    |  8200000.00 |
|     5 | 1      | UWASE MARIE CHANTAL | CASHIER       |  8200000.00 |
+-------+--------+---------------------+---------------+-------------+
5 rows in set (0.00 sec)

mysql> alter table employee add constraint fk_emp foreign key (deptid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> alter table employees add constraint fk_emp foreign key (deptid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> alter table employees add constraint fk_emp foreign key (deptid) references departments(deptid);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select departments.depname, departmants.depmanager, employees.empname from departments left outer join employees on department.deptid=employees.deptid;
ERROR 1054 (42S22): Unknown column 'departments.depname' in 'field list'
mysql> select departments.deptname, departmants.depmanager, employees.empname from departments left outer join employees on department.deptid=employees.deptid;
ERROR 1054 (42S22): Unknown column 'departmants.depmanager' in 'field list'
mysql> select departments.deptname, departmants.deptmanager, employees.empname from departments left outer join employees on department.deptid=employees.deptid;
ERROR 1054 (42S22): Unknown column 'departmants.deptmanager' in 'field list'
mysql> select departments.deptname, departments.deptmanager, employees.empname from departments left outer join employees on department.deptid=employees.deptid;
ERROR 1054 (42S22): Unknown column 'department.deptid' in 'on clause'
mysql> select departments.deptname, departments.deptmanager, employees.empname from departments left outer join employees on departments.deptid=employees.deptid;
+----------+-----------------+---------------------+
| deptname | deptmanager     | empname             |
+----------+-----------------+---------------------+
| BIT      | MUGABE ROBERT   | MANZI Hussen        |
| BIT      | MUGABE ROBERT   | MUGISHA NATHAN      |
| BIT      | MUGABE ROBERT   | UWASE MARIE CHANTAL |
| LTM      | IRERE EMACLUE   | NULL                |
| HND      | RUMURI ELIE     | GABIRO JUSTUS       |
| PHARMACY | IMENA ELINE     | MUTUJE GANZA AIME   |
| CE       | MUGISHA AIMABLE | NULL                |
+----------+-----------------+---------------------+
7 rows in set (0.01 sec)

mysql> select departments.deptname, departments.deptmanager, employees.empname from departments right outer join employees on departments.deptid=employees.deptid;
+----------+---------------+---------------------+
| deptname | deptmanager   | empname             |
+----------+---------------+---------------------+
| BIT      | MUGABE ROBERT | MANZI Hussen        |
| BIT      | MUGABE ROBERT | MUGISHA NATHAN      |
| PHARMACY | IMENA ELINE   | MUTUJE GANZA AIME   |
| HND      | RUMURI ELIE   | GABIRO JUSTUS       |
| BIT      | MUGABE ROBERT | UWASE MARIE CHANTAL |
+----------+---------------+---------------------+
5 rows in set (0.00 sec)

mysql> select * from employees where empsalary > avg(empsalary);
ERROR 1111 (HY000): Invalid use of group function
mysql> select empsalary from employees where empsalary > avg(empsalary);
ERROR 1111 (HY000): Invalid use of group function
mysql> select avg(empsalary) as avg1 from employees;
+----------------+
| avg1           |
+----------------+
| 8309000.000000 |
+----------------+
1 row in set (0.01 sec)

mysql> select empsalary from employees where empsalary > avg1;
ERROR 1054 (42S22): Unknown column 'avg1' in 'where clause'
mysql> select empname from employees where empsalary > avg1;
ERROR 1054 (42S22): Unknown column 'avg1' in 'where clause'
mysql> SELECT EmpName
    -> FROM employees
    -> WHERE Empsalary > (SELECT AVG(Empsalary) FROM employees);
+-------------------+
| EmpName           |
+-------------------+
| MUTUJE GANZA AIME |
+-------------------+
1 row in set (0.00 sec)

mysql>


QUESTION 7

Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 19
Server version: 8.0.21 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database SCHOOL1;
Query OK, 1 row affected (0.01 sec)

mysql> use school 1;
Database changed
mysql> create table student( studentid varchar(5) primary key, fullname varchar(25), gender varchar(6),age int(2) department varchar(30) not null);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'department varchar(30) not null)' at line 1
mysql> create table student( studentid varchar(5) primary key, fullname varchar(25), gender varchar(6),age int(2), department varchar(30) not null);
ERROR 1050 (42S01): Table 'student' already exists
mysql> create table students( studentid varchar(5) primary key, fullname varchar(25), gender varchar(6),age int(2), department varchar(30) not null);
Query OK, 0 rows affected, 1 warning (0.01 sec)

mysql> insert into students values('S01','MUCYO anastase', 'FEMALE', 22,'BIT'),('S03','IRANZI EVARISTE', 'MALE', 21,'PHARMACY'),('S02','UWAYO DINAH', 'FEMALE', 19, 'BIT'),('S04','GANZA ALONE', 'MALE', 22, 'ACCOUNTINg'),('S05','GANZA ERIC','MALE', 24, 'HND')
    -> ;
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from students;
+-----------+-----------------+--------+------+------------+
| studentid | fullname        | gender | age  | department |
+-----------+-----------------+--------+------+------------+
| S01       | MUCYO anastase  | FEMALE |   22 | BIT        |
| S03       | IRANZI EVARISTE | MALE   |   21 | PHARMACY   |
| S02       | UWAYO DINAH     | FEMALE |   19 | BIT        |
| S04       | GANZA ALONE     | MALE   |   22 | ACCOUNTINg |
| S05       | GANZA ERIC      | MALE   |   24 | HND        |
+-----------+-----------------+--------+------+------------+
5 rows in set (0.00 sec)

mysql> select * from students where gender='female';
+-----------+----------------+--------+------+------------+
| studentid | fullname       | gender | age  | department |
+-----------+----------------+--------+------+------------+
| S01       | MUCYO anastase | FEMALE |   22 | BIT        |
| S02       | UWAYO DINAH    | FEMALE |   19 | BIT        |
+-----------+----------------+--------+------+------------+
2 rows in set (0.00 sec)

mysql> select * from students where gender='male';
+-----------+-----------------+--------+------+------------+
| studentid | fullname        | gender | age  | department |
+-----------+-----------------+--------+------+------------+
| S03       | IRANZI EVARISTE | MALE   |   21 | PHARMACY   |
| S04       | GANZA ALONE     | MALE   |   22 | ACCOUNTINg |
| S05       | GANZA ERIC      | MALE   |   24 | HND        |
+-----------+-----------------+--------+------+------------+
3 rows in set (0.00 sec)

mysql> insert into students values('S06','UMUCYO RUKUNDO ALICE', 'FEMALE', 33,'LTM');
Query OK, 1 row affected (0.00 sec)

mysql> select * from students where gender='male';
+-----------+-----------------+--------+------+------------+
| studentid | fullname        | gender | age  | department |
+-----------+-----------------+--------+------+------------+
| S03       | IRANZI EVARISTE | MALE   |   21 | PHARMACY   |
| S04       | GANZA ALONE     | MALE   |   22 | ACCOUNTINg |
| S05       | GANZA ERIC      | MALE   |   24 | HND        |
+-----------+-----------------+--------+------+------------+
3 rows in set (0.00 sec)

mysql> select * from students where gender='female';
+-----------+----------------------+--------+------+------------+
| studentid | fullname             | gender | age  | department |
+-----------+----------------------+--------+------+------------+
| S01       | MUCYO anastase       | FEMALE |   22 | BIT        |
| S02       | UWAYO DINAH          | FEMALE |   19 | BIT        |
| S06       | UMUCYO RUKUNDO ALICE | FEMALE |   33 | LTM        |
+-----------+----------------------+--------+------+------------+
3 rows in set (0.00 sec)

mysql> delete from students where age<20;
Query OK, 1 row affected (0.00 sec)

mysql> select * from students;
+-----------+----------------------+--------+------+------------+
| studentid | fullname             | gender | age  | department |
+-----------+----------------------+--------+------+------------+
| S01       | MUCYO anastase       | FEMALE |   22 | BIT        |
| S03       | IRANZI EVARISTE      | MALE   |   21 | PHARMACY   |
| S04       | GANZA ALONE          | MALE   |   22 | ACCOUNTINg |
| S05       | GANZA ERIC           | MALE   |   24 | HND        |
| S06       | UMUCYO RUKUNDO ALICE | FEMALE |   33 | LTM        |
+-----------+----------------------+--------+------+------------+
5 rows in set (0.00 sec)

mysql>



QUESTION 9

Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 21
Server version: 8.0.21 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database SCHOOL2;
Query OK, 1 row affected (0.00 sec)

mysql> use school2;
Database changed
mysql> CREATE TABLE EMPLOYEES (
    ->     Employee_Id INT PRIMARY KEY,
    ->     First_Name VARCHAR(50),
    ->     Last_Name VARCHAR(50),
    ->     Email VARCHAR(100),
    ->     Phone_Number VARCHAR(20),
    ->     Hire_Date DATE,
    ->     Job_Id VARCHAR(10),
    ->     Salary DECIMAL(10, 2),
    ->     Commission_Pct DECIMAL(5, 2),
    ->     Manager_Id INT,
    ->     Department_Id INT
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> desc employees;
+----------------+---------------+------+-----+---------+-------+
| Field          | Type          | Null | Key | Default | Extra |
+----------------+---------------+------+-----+---------+-------+
| Employee_Id    | int           | NO   | PRI | NULL    |       |
| First_Name     | varchar(50)   | YES  |     | NULL    |       |
| Last_Name      | varchar(50)   | YES  |     | NULL    |       |
| Email          | varchar(100)  | YES  |     | NULL    |       |
| Phone_Number   | varchar(20)   | YES  |     | NULL    |       |
| Hire_Date      | date          | YES  |     | NULL    |       |
| Job_Id         | varchar(10)   | YES  |     | NULL    |       |
| Salary         | decimal(10,2) | YES  |     | NULL    |       |
| Commission_Pct | decimal(5,2)  | YES  |     | NULL    |       |
| Manager_Id     | int           | YES  |     | NULL    |       |
| Department_Id  | int           | YES  |     | NULL    |       |
+----------------+---------------+------+-----+---------+-------+
11 rows in set (0.00 sec)

mysql> INSERT INTO EMPLOYEES (Employee_Id, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Id, Salary, Commission_Pct, Manager_Id, Department_Id)
    -> VALUES
    -> (101, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),
    -> (102, 'Jane', 'Austin', 'jane.austin@example.com', '234-567-8901', '2021-03-15', 'HR_MGR', 4800.00, 0.10, 100, 70),
    -> (103, 'Michael', 'Brown', 'michael.brown@example.com', '345-678-9012', '2023-01-12', 'SA_REP', 6000.00, 0.20, 101, 80),
    -> (104, 'Anna', 'Taylor', 'anna.taylor@example.com', '456-789-0123', '2020-07-23', 'AD_VP', 9000.00, NULL, NULL, 90),
    -> (105, 'Chris', 'Johnson', 'chris.johnson@example.com', '567-890-1234', '2021-11-04', 'IT_PROG', 5200.00, NULL, 102, 60);
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> truncate table employees;
Query OK, 0 rows affected (0.01 sec)

mysql> INSERT INTO EMPLOYEES (Employee_Id, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Id, Salary, Commission_Pct, Manager_Id, Department_Id)
    -> VALUES
    -> (101, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),
    -> (102, 'Jane', 'Austin', 'jane.austin@example.com', '234-567-8901', '2021-03-15', 'HR_MGR', 4800.00, 0.10, 100, 70),
    -> (103, 'Michael', 'Brown', 'michael.brown@example.com', '345-678-9012', '2023-01-12', 'SA_REP', 6000.00, 0.20, 101, 80),
    -> (104, 'Anna', 'Taylor', 'anna.taylor@example.com', '456-789-0123', '2020-07-23', 'AD_VP', 9000.00, NULL, NULL, 90),
    -> (102, 'Jane', 'Austin', 'jane.austin@example.com', '234-567;
    '> ;
    '> ^C
mysql> (101, 'MANZI', 'ROBERT', 'manzirobert@gmail.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),(102, 'IRACYADUKUNDA', 'FLORENTINE', 'iracyadukunda@gmail.com', '123-456-7890', '2022-05-01', 'HR', 5400.00, NULL, 100, 60),(102, 'eric', 'NIYIGENA','eric@gmail.com', '123-456-7220', '2022-05-01', 'FINANCE', 50000.00, NULL, 100, 60),(101, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),(101, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, 10.00, 100, 60);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '101, 'MANZI', 'ROBERT', 'manzirobert@gmail.com', '123-456-7890', '2022-05-01', '' at line 1
mysql> insert into employees values(101, 'MANZI', 'ROBERT', 'manzirobert@gmail.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),(102, 'IRACYADUKUNDA', 'FLORENTINE', 'iracyadukunda@gmail.com', '123-456-7890', '2022-05-01', 'HR', 5400.00, NULL, 100, 60),(102, 'eric', 'NIYIGENA','eric@gmail.com', '123-456-7220', '2022-05-01', 'FINANCE', 50000.00, NULL, 100, 60),(101, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),(101, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, 10.00, 100, 60);
ERROR 1062 (23000): Duplicate entry '102' for key 'employees.PRIMARY'
mysql> insert into employees values(101, 'MANZI', 'ROBERT', 'manzirobert@gmail.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),(109, 'IRACYADUKUNDA', 'FLORENTINE', 'iracyadukunda@gmail.com', '123-456-7890', '2022-05-01', 'HR', 5400.00, NULL, 100, 60),(106, 'eric', 'NIYIGENA','eric@gmail.com', '123-456-7220', '2022-05-01', 'FINANCE', 50000.00, NULL, 100, 60),(104, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),(105, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, 10.00, 100, 60);
ERROR 1062 (23000): Duplicate entry '101' for key 'employees.PRIMARY'
mysql> insert into employees values(101, 'MANZI', 'ROBERT', 'manzirobert@gmail.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),(109, 'IRACYADUKUNDA', 'FLORENTINE', 'iracyadukunda@gmail.com', '123-456-7890', '2022-05-01', 'HR', 5400.00, NULL, 100, 60),(110, 'eric', 'NIYIGENA','eric@gmail.com', '123-456-7220', '2022-05-01', 'FINANCE', 50000.00, NULL, 100, 60),(104, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),(105, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, 10.00, 100, 60);
ERROR 1062 (23000): Duplicate entry '101' for key 'employees.PRIMARY'
mysql> select * from employees;
+-------------+---------------+------------+-------------------------+--------------+------------+---------+---------+----------------+------------+---------------+
| Employee_Id | First_Name    | Last_Name  | Email                   | Phone_Number | Hire_Date  | Job_Id  | Salary  | Commission_Pct | Manager_Id | Department_Id |
+-------------+---------------+------------+-------------------------+--------------+------------+---------+---------+----------------+------------+---------------+
|         101 | MANZI         | ROBERT     | manzirobert@gmail.com   | 123-456-7890 | 2022-05-01 | IT_PROG | 5500.00 |           NULL |        100 |            60 |
|         102 | IRACYADUKUNDA | FLORENTINE | iracyadukunda@gmail.com | 123-456-7890 | 2022-05-01 | HR      | 5400.00 |           NULL |        100 |            60 |
+-------------+---------------+------------+-------------------------+--------------+------------+---------+---------+----------------+------------+---------------+
2 rows in set (0.00 sec)

mysql> insert into employees values(103,'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'FINANCE', 5500.00, 20, 100, 60);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees values(103,'robert', 'kagabo', 'kangabe@gmail.com', '123-456-7890', '2022-05-01', 'TEACHER', 10000.00, 12, 120, 10);
ERROR 1062 (23000): Duplicate entry '103' for key 'employees.PRIMARY'
mysql> insert into employees values(104,'robert', 'kagabo', 'kangabe@gmail.com', '123-456-7890', '2022-05-01', 'TEACHER', 10000.00, 12, 120, 10);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employees values(105,'mutuye', 'ALINE', 'MUTUYEALINE@gmail.com', '122-456-72890', '2023-05-01', 'REGISTRAR', 12300.00, 13, 20, 30);
Query OK, 1 row affected (0.00 sec)

mysql> select * rrom employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'rrom employees' at line 1
mysql> select * from employees;
+-------------+---------------+------------+-------------------------+---------------+------------+-----------+----------+----------------+------------+---------------+
| Employee_Id | First_Name    | Last_Name  | Email                   | Phone_Number  | Hire_Date  | Job_Id    | Salary   | Commission_Pct | Manager_Id | Department_Id |
+-------------+---------------+------------+-------------------------+---------------+------------+-----------+----------+----------------+------------+---------------+
|         101 | MANZI         | ROBERT     | manzirobert@gmail.com   | 123-456-7890  | 2022-05-01 | IT_PROG   |  5500.00 |           NULL |        100 |            60 |
|         102 | IRACYADUKUNDA | FLORENTINE | iracyadukunda@gmail.com | 123-456-7890  | 2022-05-01 | HR        |  5400.00 |           NULL |        100 |            60 |
|         103 | John          | Smith      | john.smith@example.com  | 123-456-7890  | 2022-05-01 | FINANCE   |  5500.00 |          20.00 |        100 |            60 |
|         104 | robert        | kagabo     | kangabe@gmail.com       | 123-456-7890  | 2022-05-01 | TEACHER   | 10000.00 |          12.00 |        120 |            10 |
|         105 | mutuye        | ALINE      | MUTUYEALINE@gmail.com   | 122-456-72890 | 2023-05-01 | REGISTRAR | 12300.00 |          13.00 |         20 |            30 |
+-------------+---------------+------------+-------------------------+---------------+------------+-----------+----------+----------------+------------+---------------+
5 rows in set (0.00 sec)

mysql> select employee_id,First_Name,Last_Name,Email,Salary from employees;
+-------------+---------------+------------+-------------------------+----------+
| employee_id | First_Name    | Last_Name  | Email                   | Salary   |
+-------------+---------------+------------+-------------------------+----------+
|         101 | MANZI         | ROBERT     | manzirobert@gmail.com   |  5500.00 |
|         102 | IRACYADUKUNDA | FLORENTINE | iracyadukunda@gmail.com |  5400.00 |
|         103 | John          | Smith      | john.smith@example.com  |  5500.00 |
|         104 | robert        | kagabo     | kangabe@gmail.com       | 10000.00 |
|         105 | mutuye        | ALINE      | MUTUYEALINE@gmail.com   | 12300.00 |
+-------------+---------------+------------+-------------------------+----------+
5 rows in set (0.00 sec)

mysql> SELECT Employee_Id, First_Name, Last_Name
    -> FROM EMPLOYEES
    -> WHERE Manager_Id = 100;
+-------------+---------------+------------+
| Employee_Id | First_Name    | Last_Name  |
+-------------+---------------+------------+
|         101 | MANZI         | ROBERT     |
|         102 | IRACYADUKUNDA | FLORENTINE |
|         103 | John          | Smith      |
+-------------+---------------+------------+
3 rows in set (0.00 sec)

mysql> SELECT First_Name, Last_Name
    -> FROM EMPLOYEES
    -> WHERE Salary >= 4800;
+---------------+------------+
| First_Name    | Last_Name  |
+---------------+------------+
| MANZI         | ROBERT     |
| IRACYADUKUNDA | FLORENTINE |
| John          | Smith      |
| robert        | kagabo     |
| mutuye        | ALINE      |
+---------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT First_Name, Last_Name
    -> FROM EMPLOYEES
    -> WHERE Last_Name = 'AUSTIN';
Empty set (0.00 sec)

mysql> SELECT First_Name, Last_Name
    -> FROM EMPLOYEES
    -> WHERE Department_Id IN (60, 70, 80);
+---------------+------------+
| First_Name    | Last_Name  |
+---------------+------------+
| MANZI         | ROBERT     |
| IRACYADUKUNDA | FLORENTINE |
| John          | Smith      |
+---------------+------------+
3 rows in set (0.00 sec)

mysql>

QUESTION 10

Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 22
Server version: 8.0.21 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database SALES;
Query OK, 1 row affected (0.00 sec)

mysql> use sales;
Database changed
mysql> CREATE TABLE Sales (
    ->     Sales_No INT PRIMARY KEY,
    ->     Salesname VARCHAR(50),
    ->     Branch VARCHAR(50),
    ->     Salesamount DECIMAL(10, 2),
    ->     DOB DATE
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> INSERT INTO Sales (Sales_No, Salesname, Branch, Salesamount, DOB) VALUES
    ->     (1, 'Mucyo Nshimiyimana', 'Kigali Branch', 1000, '1990-12-15'),
    ->     (2, 'Ganza Rurangirwa', 'Huye Branch', 1500, '1985-05-20'),
    ->     (3, 'David Lee', 'Musanze Branch', 800, '1978-08-10'),
    ->     (4, 'Sarah Jones', 'Rubavu Branch', 2000, '1992-11-01'),
    ->     (5, 'Michael Brown', 'Kigali Branch', 1200, '1988-12-25');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from sales;
+----------+--------------------+----------------+-------------+------------+
| Sales_No | Salesname          | Branch         | Salesamount | DOB        |
+----------+--------------------+----------------+-------------+------------+
|        1 | Mucyo Nshimiyimana | Kigali Branch  |     1000.00 | 1990-12-15 |
|        2 | Ganza Rurangirwa   | Huye Branch    |     1500.00 | 1985-05-20 |
|        3 | David Lee          | Musanze Branch |      800.00 | 1978-08-10 |
|        4 | Sarah Jones        | Rubavu Branch  |     2000.00 | 1992-11-01 |
|        5 | Michael Brown      | Kigali Branch  |     1200.00 | 1988-12-25 |
+----------+--------------------+----------------+-------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT Branch, SUM(Salesamount) AS Total_Sales
    -> FROM Sales
    -> GROUP BY Branch;
+----------------+-------------+
| Branch         | Total_Sales |
+----------------+-------------+
| Kigali Branch  |     2200.00 |
| Huye Branch    |     1500.00 |
| Musanze Branch |      800.00 |
| Rubavu Branch  |     2000.00 |
+----------------+-------------+
4 rows in set (0.00 sec)

mysql> SELECT Branch, AVG(Salesamount) AS Avg_Sales
    -> FROM Sales
    -> GROUP BY Branch;
+----------------+-------------+
| Branch         | Avg_Sales   |
+----------------+-------------+
| Kigali Branch  | 1100.000000 |
| Huye Branch    | 1500.000000 |
| Musanze Branch |  800.000000 |
| Rubavu Branch  | 2000.000000 |
+----------------+-------------+
4 rows in set (0.00 sec)

mysql> SELECT Salesname, TO_CHAR(DOB, 'DD-Mon-YY') AS DOB_Formatted
    -> FROM Sales
    -> WHERE EXTRACT(MONTH FROM DOB) = 12;
ERROR 1305 (42000): FUNCTION sales.TO_CHAR does not exist
mysql> SELECT Salesname, TO_CHAR(DOB, 'DD-Mon-YY') AS DOB_Formatted
    -> FROM Sales
    -> WHERE EXTRACT(MONTH FROM DOB) = 12;
ERROR 1305 (42000): FUNCTION sales.TO_CHAR does not exist

mysql> SELECT Salesname, TO_CHAR(DOB, 'Mon') AS DOB_Month
    -> FROM Sales
    -> ORDER BY DOB_Month;
ERROR 1305 (42000): FUNCTION sales.TO_CHAR does not exist

mysql> SELECT Salesname, DATE_FORMAT(DOB, '%d-%b-%y') AS DOB_Formatted
    -> FROM Sales
    -> WHERE MONTH(DOB) = 12;
+--------------------+---------------+
| Salesname          | DOB_Formatted |
+--------------------+---------------+
| Mucyo Nshimiyimana | 15-Dec-90     |
| Michael Brown      | 25-Dec-88     |
+--------------------+---------------+
2 rows in set (0.00 sec)

mysql> SELECT Salesname, DATE_FORMAT(DOB, '%b') AS DOB_Month
    -> FROM Sales
    -> ORDER BY DOB_Month;
+--------------------+-----------+
| Salesname          | DOB_Month |
+--------------------+-----------+
| David Lee          | Aug       |
| Mucyo Nshimiyimana | Dec       |
| Michael Brown      | Dec       |
| Ganza Rurangirwa   | May       |
| Sarah Jones        | Nov       |
+--------------------+-----------+
5 rows in set (0.00 sec)

mysql>



