/*Function to multiply two numbers */

delimiter //
  create function multiplyset(a int , b int) returns int
  deterministic
   begin
   
     declare c int;
     set c=a*b;
     return c;
     
     end;
     //
     
     
     /*
     mysql> source /home/anuksha/function_multiply.sql
Query OK, 0 rows affected (0.25 sec)

mysql> set @a=multiply(10,5);
    -> select concat("Multiplication ",@a);
    -> //
Query OK, 0 rows affected (0.00 sec)

+------------------------------+
| concat("Multiplication ",@a) |
+------------------------------+
| Multiplication 50            |
+------------------------------+

*/
