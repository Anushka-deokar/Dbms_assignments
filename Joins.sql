
mysql> create table emp(name varchar(20),city varchar(20));
cQuery OK, 0 rows affected (1.36 sec)

mysql> create table emp_sal(name varchar(20),dept varchar(20),salary integer);
Query OK, 0 rows affected (1.26 sec)

mysql> insert into emp values('ABC','Nasik');
Query OK, 1 row affected (0.20 sec)

mysql> insert into emp values('DYZ','Pune');
Query OK, 1 row affected (0.19 sec)

mysql> insert into emp values('PQR','Mumbai');
\Query OK, 1 row affected (0.18 sec)

mysql> insert into emp_sal values('PQR','Sales',800);
Query OK, 1 row affected (0.10 sec)

mysql> insert into emp_sal values('XYZ','IT',900);
Query OK, 1 row affected (0.20 sec)

mysql> insert into emp_sal values('ABC','Marketing',600);
Query OK, 1 row affected (0.19 sec)

mysql> select * from emp;
+------+--------+
| name | city   |
+------+--------+
| ABC  | Nasik  |
| DYZ  | Pune   |
| PQR  | Mumbai |
+------+--------+
3 rows in set (0.00 sec)

mysql> select * from emp_sal;
+------+-----------+--------+
| name | dept      | salary |
+------+-----------+--------+
| PQR  | Sales     |    800 |
| XYZ  | IT        |    900 |
| ABC  | Marketing |    600 |
+------+-----------+--------+

mysql> select emp.name,emp_sal.salary from emp inner join emp_sal on emp.name=emp_sal.name;
+------+--------+
| name | salary |
+------+--------+
| PQR  |    800 |
| ABC  |    600 |
+------+--------+

ysql> select emp.name,emp_sal.salary from emp left outer join emp_sal on emp.name=emp_sal.name;
+------+--------+
| name | salary |
+------+--------+
| ABC  |    600 |
| DYZ  |   NULL |
| PQR  |    800 |
+------+--------+

mysql> select emp.name,emp_sal.salary from emp right outer join emp_sal on emp.name=emp_sal.name;
+------+--------+
| name | salary |
+------+--------+
| PQR  |    800 |
| NULL |    900 |
| ABC  |    600 |
+------+--------+

