mysql> create table Library_Audit(id integer primary key auto_increment,operation varchar(20),operationtime time,bookno integer,bookname varchar(20),bookpublisher varchar(20),bookcost integer);
Query OK, 0 rows affected (1.13 sec)

mysql> insert into Library values(210,'C++','Balguruswamy',380);
Query OK, 1 row affected (0.20 sec)

mysql> insert into Library values(340,'DBMS','Korth',450),(675,'Data Structures','Sahni',780);
Query OK, 2 rows affected (0.19 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into Library values(225,'C++','Kanitkar',520),(21,'Operating system','Sahni',780);
Query OK, 2 rows affected (0.29 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from Library;
+--------+------------------+---------------+----------+
| bookno | bookname         | bookpublisher | bookcost |
+--------+------------------+---------------+----------+
|    210 | C++              | Balguruswamy  |      380 |
|    340 | DBMS             | Korth         |      450 |
|    675 | Data Structures  | Sahni         |      780 |
|    225 | C++              | Kanitkar      |      520 |
|     21 | Operating system | Sahni         |      780 |
+--------+------------------+---------------+----------+
5 rows in set (0.00 sec)

mysql> select * from Library_Audit;
    -> //
Empty set (0.00 sec)



/*Before update*/

mysql> source /home/anuksha/library_before_update.sql
Query OK, 0 rows affected (0.26 sec)

mysql> update Library set bookname='OS' where bookno=210;
    -> //
Query OK, 1 row affected (0.19 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from Library;
    -> //
+--------+------------------+---------------+----------+
| bookno | bookname         | bookpublisher | bookcost |
+--------+------------------+---------------+----------+
|    210 | OS               | Balguruswamy  |      380 |
|    340 | DBMS             | Korth         |      450 |
|    675 | Data Structures  | Sahni         |      780 |
|    225 | C++              | Kanitkar      |      520 |
|     21 | Operating system | Sahni         |      780 |



mysql> select * from Library_Audit;
    -> //
+----+-----------+---------------+--------+----------+---------------+----------+
| id | operation | operationtime | bookno | bookname | bookpublisher | bookcost |
+----+-----------+---------------+--------+----------+---------------+----------+
|  1 | update    | 10:19:30      |    210 | C++      | Balguruswamy  |      380 |
+----+-----------+---------------+--------+----------+---------------+----------+
1 row in set (0.00 sec)




/*AFTER UPDATE */


mysql> source /home/anuksha/library_after_update.sql
Query OK, 0 rows affected (0.42 sec)

mysql> update Library set bookname='DSA' where bookno=225;
    -> //
Query OK, 1 row affected (0.24 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from Library_Audit;
    -> //
+----+-----------+---------------+--------+----------+---------------+----------+
| id | operation | operationtime | bookno | bookname | bookpublisher | bookcost |
+----+-----------+---------------+--------+----------+---------------+----------+
|  1 | update    | 10:19:30      |    210 | C++      | Balguruswamy  |      380 |
|  2 | update    | 10:36:13      |    225 | C++      | Kanitkar      |      520 |
|  3 | update    | 10:36:13      |    225 | DSA      | Kanitkar      |      520 |
+----+-----------+---------------+--------+----------+---------------+----------+
3 rows in set (0.01 sec)


mysql> update Library set bookname='Operating system' where bookno=210;
    -> //
Query OK, 1 row affected (0.31 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from Library;
    -> //
+--------+------------------+---------------+----------+
| bookno | bookname         | bookpublisher | bookcost |
+--------+------------------+---------------+----------+
|    210 | Operating system | Balguruswamy  |      380 |
|    340 | DBMS             | Korth         |      450 |
|    675 | Data Structures  | Sahni         |      780 |
|    225 | DSA              | Kanitkar      |      520 |
|     21 | Operating system | Sahni         |      780 |
|    311 | OOP              | Yash          |      670 |
+--------+------------------+---------------+----------+
6 rows in set (0.00 sec)

mysql> select * from Library_Audit;
    -> //
+----+-----------+---------------+--------+------------------+---------------+----------+
| id | operation | operationtime | bookno | bookname         | bookpublisher | bookcost |
+----+-----------+---------------+--------+------------------+---------------+----------+
|  1 | update    | 10:19:30      |    210 | C++              | Balguruswamy  |      380 |
|  2 | update    | 10:36:13      |    225 | C++              | Kanitkar      |      520 |
|  3 | update    | 10:36:13      |    225 | DSA              | Kanitkar      |      520 |
|  4 | update    | 10:37:28      |    210 | OS               | Balguruswamy  |      380 |
|  5 | update    | 10:37:28      |    210 | Operating system | Balguruswamy  |      380 |
+----+-----------+---------------+--------+------------------+---------------+----------+
5 rows in set (0.01 sec)




