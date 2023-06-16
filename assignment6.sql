mysql> create table library(rollno integer primary key,date_of_issue date,name_of_book varchar(20),status char(10));
Query OK, 0 rows affected (1.37 sec)

mysql> create table fine(rollno integer references library(rollno), date_of_return date,amount integer);
Query OK, 0 rows affected (1.08 sec)

mysql> desc library;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| rollno        | int         | NO   | PRI | NULL    |       |
| date_of_issue | date        | YES  |     | NULL    |       |
| name_of_book  | varchar(20) | YES  |     | NULL    |       |
| status        | char(10)    | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> desc fine;
+----------------+------+------+-----+---------+-------+
| Field          | Type | Null | Key | Default | Extra |
+----------------+------+------+-----+---------+-------+
| rollno         | int  | YES  |     | NULL    |       |
| date_of_return | date | YES  |     | NULL    |       |
| amount         | int  | YES  |     | NULL    |       |
+----------------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into library values(1,'2023-06-02','C++','I');
Query OK, 1 row affected (0.19 sec)

mysql> select * from library;
+--------+---------------+--------------+--------+
| rollno | date_of_issue | name_of_book | status |
+--------+---------------+--------------+--------+
|      1 | 2023-06-02    | C++          | I      |
+--------+---------------+--------------+--------+
1 row in set (0.00 sec)

mysql> insert into library values(137,'2023-03-12','Python','I');
Query OK, 1 row affected (0.16 sec)

mysql> insert into library values(69,'2023-01-25','Java','I');
Query OK, 1 row affected (0.25 sec)

mysql> insert into library values(12,'2023-02-5','c++','I');
Query OK, 1 row affected (0.19 sec)

mysql> select * from library;
+--------+---------------+--------------+--------+
| rollno | date_of_issue | name_of_book | status |
+--------+---------------+--------------+--------+
|      1 | 2023-06-02    | C++          | I      |
|     12 | 2023-02-05    | c++          | I      |
|     69 | 2023-01-25    | Java         | I      |
|    137 | 2023-03-12    | Python       | I      |
+--------+---------------+--------------+--------+
4 rows in set (0.00 sec)



/*Executing on terminal */
mysql> source /home/anuksha/Assignment6.sql
Query OK, 0 rows affected (0.25 sec)

/*calling */

mysql> call calcfine(137,'Python');
    -> //
+--------------------------------------+
| concat('Fine amount is ',fineamount) |
+--------------------------------------+
| Fine amount is 3375                  |
+--------------------------------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.24 sec)


mysql> select * from library;
    -> //
+--------+---------------+--------------+--------+
| rollno | date_of_issue | name_of_book | status |
+--------+---------------+--------------+--------+
|      1 | 2023-06-02    | C++          | I      |
|     12 | 2023-02-05    | c++          | R      |
|     69 | 2023-01-25    | Java         | I      |
|    137 | 2023-03-12    | Python       | R      |
+--------+---------------+--------------+--------+
4 rows in set (0.00 sec)


