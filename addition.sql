/* addition of two numbers using procedure */
delimiter //
  create procedure addition(a int,b int)
    begin
    declare c int;
    set c=a+b;
    select concat("Addition :",c);
    end;
    //
    
