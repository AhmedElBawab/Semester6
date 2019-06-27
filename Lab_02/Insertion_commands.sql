Insert Into PUBLISHER Values ('john smith','5 shore st.','012-6453242');
Insert Into PUBLISHER Values ('jon stark','6 shore st.','03-5453242');
Insert Into PUBLISHER Values ('ned stark','6 shore st.','03-5453242');
Insert Into PUBLISHER Values ('milisandra','50 shore st.','012-7785213');

Insert Into LIBRARY_BRANCH Values (1,'Sharpstown','2 shore st.');
Insert Into LIBRARY_BRANCH Values (2,'Book Home','30 shore st.');
Insert Into LIBRARY_BRANCH Values (10,'Central','20 shore st.');

Insert Into BORROWER Values (1,'ahmed','50 shore st.','012-7785213');
Insert Into BORROWER Values (2,'ibrahim','15 shore st.','012-9589623');
Insert Into BORROWER Values (3,'sameh','22 shore st.','03-7785553');
Insert Into BORROWER Values (4,'samir','29 shore st.','015-2785213');
Insert Into BORROWER Values (5,'fares','32 shore st.','05-7785213');

Insert Into BOOK Values (1,'life difficults','john smith');
Insert Into BOOK Values (4,'iceANDfire','milisandra');
Insert Into BOOK Values (2,'The Lost Tribe','jon stark');
Insert Into BOOK Values (7,'ahly','milisandra');
Insert Into BOOK Values (8,'ahram','milisandra');

Insert Into BOOK_COPIES Values (2,1,7);
Insert Into BOOK_COPIES Values (7,10,15);
Insert Into BOOK_COPIES Values (8,10,20);

Insert Into BOOK_LOANS Values (1,2,1,'2018-05-03','2018-08-03');
Insert Into BOOK_LOANS Values (2,2,1,'2019-02-03','2018-04-15');

Insert Into BOOK_AUTHORS Values (7,'Stephen King');