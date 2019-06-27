select No_of_copies 
from book , book_copies , library_branch
where Title = "The Lost Tribe" and Branch_name = "Sharpstown" and
	book.Book_Id = book_copies.Book_Id and library_branch.Branch_id = book_copies.Branch_id;
    
select No_of_copies
from BOOK_COPIES , BOOK , LIBRARY_BRANCH
where book.Title = "The Lost Tribe" and book.Book_id = book_copies.Book_id and library_branch.Branch_id = book_copies.Branch_id;

select Name
from BORROWER
where Card_no not in (select Card_no from BOOK_LOANS);

select book.Title , borrower.Name , borrower.Address
from book , borrower , book_loans , library_branch
where library_branch.Branch_name = "Sharpstown" and book_loans.Due_date = date(now()) and library_branch.Branch_id = book_loans.Branch_id
	and book.Book_id = book_loans.Book_id and borrower.Card_no = book_loans.Card_no;

select count(Book_Id), Branch_name 
FROM book_loans,library_branch
where book_loans.Branch_id = library_branch.Branch_id
group by (book_loans.Branch_id);

select count(Book_Id) , Name , Address
from borrower , book_loans
where borrower.Card_no = book_loans.Card_no
group by(book_loans.Card_no)
having count(Book_Id) > 5;

select Title , No_of_copies
from BOOK_COPIES , BOOK_AUTHORS , BOOK , LIBRARY_BRANCH
where BOOK_AUTHORS.Author_name = "Stephen King" and LIBRARY_BRANCH.Branch_name = "Central" 
		and book.Book_id = book_authors.Book_id and book.Book_id = book_copies.Book_id 
        and book_copies.Branch_id = library_branch.Branch_id; 