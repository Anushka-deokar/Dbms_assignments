/*creating a cursor for copying data from student1 table to student 2 table*/

delimiter //
create procedure proc_copy()
  begin
     declare vfinished int default 0;
     declare r int;
     declare n varchar(20);
     declare c varchar(20);
     
     declare studcursor cursor for select * from student1;
     declare continue handler for NOT FOUND set vfinished=1;
     
     open studcursor;
     getdata:loop
     fetch studcursor into r,n,c;
     if vfinished=1 then
        leave getdata;
          end if;
          
          insert into student2 value(r,n,c);
          end loop getdata;
          
          end;
          
          //
          
    
    
    
    
  /*QUERIES 
  
  /*
  mysql> create table student1(rno1 integer,name1 varchar(20),class1 varchar(20));
    -> //
Query OK, 0 rows affected (1.14 sec)

mysql> create table student2(rno2 integer,name2 varchar(20),class2 varchar(20));
    -> //
Query OK, 0 rows affected (1.36 sec)

mysql> insert into student1 values(1,'abc','sy');
    -> //
Query OK, 1 row affected (0.12 sec)

mysql> insert into student1 values(2,'xyz','sy');
    -> //
Query OK, 1 row affected (0.16 sec)

mysql> insert into student1 values(3,'pqr','sy');
    -> //
Query OK, 1 row affected (0.20 sec)

mysql> insert into student1 values(4,'mno','sy');
    -> //
Query OK, 1 row affected (0.20 sec)

mysql> insert into student1 values(5,'pqr','sy');
    -> //
Query OK, 1 row affected (0.19 sec)

mysql> source /home/anuksha/Cursor_stud.sql
Query OK, 0 rows affected (0.29 sec)

mysql> call proc_copy();
    -> //
Query OK, 0 rows affected (1.04 sec)

mysql> select * from student2;
    -> //
+------+-------+--------+
| rno2 | name2 | class2 |
+------+-------+--------+
|    1 | abc   | sy     |
|    2 | xyz   | sy     |
|    3 | pqr   | sy     |
|    4 | mno   | sy     |
|    5 | pqr   | sy     |
+------+-------+--------+
5 rows in set (0.00 sec)

mysql> select * from student1;
    -> //
+------+-------+--------+
| rno1 | name1 | class1 |
+------+-------+--------+
|    1 | abc   | sy     |
|    2 | xyz   | sy     |
|    3 | pqr   | sy     |
|    4 | mno   | sy     |
|    5 | pqr   | sy     |
+------+-------+--------+
5 rows in set (0.00 sec)

  */
