delimiter //

create procedure proc_Grade(name varchar(20), total_marks int)
 begin
   declare class varchar(30);
   
   if total_marks <= 1500 and total_marks >= 990 then
       set class='Distinction ';
   elseif total_marks <=989 and total_marks >=900 then
        set class ='first class ';
        
   elseif total_marks <=899 and total_marks>=825 then
       set class ='Higher second class';
    else
       set class ='Not categorized';
    end if;
    insert into result(name,class)values(name,class);
    end;
    //
    
                   
