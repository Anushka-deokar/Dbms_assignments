delimiter //
  create trigger t before update on library
    for each row
      begin
       insert into library_audit values(NULL,'update',Now(),old.bookno,old.bookname,old.bookpublisher,old.bookcost);
       end;
       //
