delimiter //
 create trigger t1 before delete on library
   for each row
     begin
       insert into library_audit values(NULL,'delete',Now(),old.bookno,old.bookname,old.bookpublisher,old.bookcost);
       end;
       //

