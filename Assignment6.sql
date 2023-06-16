delimiter //

create procedure calcfine(rno int,nbook varchar(20))
  begin
  declare no_of_days int;
  declare fineamount int;
  declare date1 date;
  
  select date_of_issue into date1 from library where rollno=rno and name_of_book =nbook;
  set no_of_days=datediff(curdate(),date1);
  
  if no_of_days >15 and no_of_days <30
  then
  set fineamount=(no_of_days - 15)*5;
  end if;
  if no_of_days>30 then
  set fineamount=((no_of_days-15)-(no_of_days -30))*5 + (no_of_days -30)*50;
  end if;
  
  select concat('Fine amount is ',fineamount);
  
  if fineamount >0 then
  insert into fine values(rno,curdate(),fineamount);
  
  update library set status ='R' where rollno=rno;
  end if;
  end;
  //
