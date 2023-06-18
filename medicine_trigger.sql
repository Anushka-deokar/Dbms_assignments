/*Trigger for neworder for medicine: creating two tables as medicine and neworder table -> insert record in medicine table and if quatity less than 20 then fired the trigger and make a new order*/

delimiter //
create trigger neworder
    after update on medicine
    for each row
      begin
      if new.quantity < 20 then
      insert into neworder values(new.mid,sysdate(),200);
      end if;
      end;
      //
      
      
      /*
      mysql> create table medicine(mid integer,medname varchar(20),price integer, quantity integer);
    -> //
Query OK, 0 rows affected (0.89 sec)

mysql> insert into medicine values(1,'crocin',500,25);
    -> //
Query OK, 1 row affected (0.20 sec)

mysql> insert into medicine values(2,'calpol',355,30);
    -> //
Query OK, 1 row affected (0.19 sec)

mysql> create table  neworder(mid integer,odate date,newquantity integer);
    -> //
Query OK, 0 rows affected (1.88 sec)

mysql> desc neworder;
    -> //
+-------------+------+------+-----+---------+-------+
| Field       | Type | Null | Key | Default | Extra |
+-------------+------+------+-----+---------+-------+
| mid         | int  | YES  |     | NULL    |       |
| odate       | date | YES  |     | NULL    |       |
| newquantity | int  | YES  |     | NULL    |       |
+-------------+------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> source /home/anuksha/medicine_trigger.sql
Query OK, 0 rows affected (0.17 sec)

mysql> select * from neworder;
    -> //
Empty set (0.00 sec)

mysql> update medicine set quantity=15 where mid=1;
    -> //
Query OK, 1 row affected (0.24 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from medicine;
    -> //
+------+---------+-------+----------+
| mid  | medname | price | quantity |
+------+---------+-------+----------+
|    1 | crocin  |   500 |       15 |
|    2 | calpol  |   355 |       30 |
+------+---------+-------+----------+
2 rows in set (0.00 sec)

mysql> select * from neworder;
    -> //
+------+------------+-------------+
| mid  | odate      | newquantity |
+------+------------+-------------+
|    1 | 2023-06-19 |         200 |
+------+------------+-------------+
1 row in set (0.00 sec)

*/
