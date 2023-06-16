mysql> create table stud_marks(name varchar(20),total_marks integer);
    
Query OK, 0 rows affected (0.83 sec)

mysql> create table result(rollno int primary key auto_increment, name varchar(20),class varchar(30));

mysql> insert into stud_marks values('Anushka Deokar',1480);
   
Query OK, 1 row affected (0.20 sec)

mysql> insert into stud_marks values('John',1000);
   Query OK, 1 row affected (0.18 sec)

mysql> insert into stud_marks values('Sam',800);
    Query OK, 1 row affected (0.19 sec)

mysql> insert into stud_marks values('Smith',1600);
   
Query OK, 1 row affected (0.19 sec)

mysql> select * from stud_marks;
    
+----------------+-------------+
| name           | total_marks |
+----------------+-------------+
| Anushka Deokar |        1480 |
| John           |        1000 |
| Sam            |         800 |
| Smith          |        1600 |
+----------------+-------------+
4 rows in set (0.00 sec)

/*calling */

mysql> call proc_Grade('Anushka Deokar',1480);
    
Query OK, 1 row affected (0.20 sec)

mysql> select * from result;
    
+--------+----------------+--------------+
| rollno | name           | class        |
+--------+----------------+--------------+
|      1 | Anushka Deokar | Distinction  |
+--------+----------------+--------------+
1 row in set (0.00 sec)

mysql> call proc_Grade('Sam',800);
    
Query OK, 1 row affected (0.19 sec)

mysql> select * from result;
    
+--------+----------------+-----------------+
| rollno | name           | class           |
+--------+----------------+-----------------+
|      1 | Anushka Deokar | Distinction     |
|      2 | Sam            | Not categorized |
+--------+----------------+-----------------+
2 rows in set (0.00 sec)


