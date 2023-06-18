/*PL-SQL FUNCTION TO FIND GREATEST AMONG TWO NUMBERS */

delimiter //
create function greatest(a int , b int)
 returns int
 deterministic
 begin
  declare c int;
  
  if a>b then
   set c=a;
   
   else
     set c=b;
    end if; 
    
   return c;
   
   end;
   //  
   
   /* QUERIES
   
   
   mysql> source /home/anuksha/function_greatest.sql
Query OK, 0 rows affected, 1 warning (0.25 sec)

mysql> set @a=greatest(10,50);
mysql> select concat('Greatest number from given two number is ',@a);
    -> //
+--------------------------------------------------------+
| concat('Greatest number from given two number is ',@a) |
+--------------------------------------------------------+
| Greatest number from given two number is 50            |
+--------------------------------------------------------+
1 row in set (0.00 sec)


   
   
   
   
   */
