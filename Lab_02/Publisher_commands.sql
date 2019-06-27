insert into publisher ( Name , Address , Phone)
		values ("Ahmed" , "Faculty of Eng" , "01125088911");
        
insert into publisher
		values ("Mohamed" , "Alex" , "0123456789");
        
insert into publisher (Name)
		values ("Khalil");
        
insert into publisher ( Address , Name)
		values ("Paris" , "Bakr");
 
update publisher 
	set Address = "London"
	where Name = "Khalil";
    
delete from publisher
	where Name = "mohamed";