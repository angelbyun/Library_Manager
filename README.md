Library can have many books
Table -> libraries
- auto-generated ID (PRIMARY KEY)
- name:string
- city:string
- opening_time:integer
- closing_time:integer
- book_available:boolean

Books belong to a library
Table -> books
- auto-generated ID (PRIMARY KEY)
- library_id:integer (FOREIGN KEY)
- title:string
- author:string
- fiction:boolean
- number_of_copies:integer

User Story 1 - Library Index: 
For each library table
As a visitor
When I visit '/libraries'
Then I see the name of each library record in the system
EXAMPLE:
  Library Names: 
    - Denver Public Library
    - Douglas County Library

User Story 2, Library Show:
As a visitor
When I visit '/library/:id'
Then I see the library with that id including the library's attributes
(data from each column that is on the library table)
EXAMPLE:
Denver Public Library 
  City: Denver
  Opening Time:   10:00
  Closing Time:   18:00
  Book Available: False

User Story 3, Book Index:
As a visitor
When I visit '/books'
Then I see each Book in the system including the Book's attributes
(data from each column that is on the book table)
EXAMPLE: 
  Title: Harry Potter and the Sorcerer's Stone
  Author: J.K. Rowling
  Fiction: True
  Number of Copies: 2

User Story 4, Book Show:
As a visitor
When I visit '/books/:id'
Then I see the book with that id including the book's attributes.
EXAMPLE:
Title: Harry Potter and the Sorcerer's Stone
Author: JK Rowling
Fiction: True
Number of Copies: 2

User Story 5, Library Books Index:
As a visitor
When I visit '/libraries/:library_id/books'
Then I see each Book that is associated with that Library with each Book's attributes
EXAMPLE:
 Total Books at Denver Public Library: 2
 Total Books at Douglas County Library: 2

User Story 6, Library Index sorted by Most Recently Created 

As a visitor
When I visit the library index,
I see that records are ordered by most recently created first
And next to each of the records I see when it was created

User Story 7, Library Book Count

As a visitor
When I visit a Library's show page
I see a count of the number of book associated with this library

User Story 8, Child Index Link
As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the Book Index

User Story 9, Library Index Link
As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the Library Index

User Story 10, Library Book Index Link
As a visitor
When I visit a library show page ('/libraries/:id')
THen I see a link to take me tot hat library's 'book' page ('/libraries/:id/books')

User Story 11, Library Creation
As a visitor
When I visit the Library Index page
Then I see a link to create a new Library record, "New Library"
When I click this link
Then I am taken to '/libraries/new' where I see a form for a new library record
When I fill out the form with a new library's attributes:
And I click the button "Create Library" to submit the form
Then a `POST` request is sent to the '/libraries' route,
a new library record is created,
and I am redirected to the Library Index page where I see the new Library displayed

User Story 12, Library Update
As a visitor,
When I visit a library show page
Then I see a link to update the library "Update Library"
When I click the link "Update Library"
Then I am taken to '/parents/:id/edit' where I see a form to edit the library's attributes:
When I click the button to submit the form
Then a `PATCH` request is sent to '/libraries/:id',
the library's info is update,
and I am redirected to the Library's Show page where I see the library's updated info

User Story 13, Library Book Creation
As a visitor
When I visit a Library Book Index page
THen I see a link to add a new adoptable book for that library "Create Book"
When I click the link
I am taken '/libraries/:library_id/books/new' where I see a form to add a new adoptable book
When I fill in the form with the book's attributes:
And I click the button "Create Book"
Then a `POST` request is sent to '/libraries/:library_id/books',
a new book object/row is created for that library,
and I am redirected to the Library Book Index page where I can see the new book listed

User Story 14, Book Update
As a visitor,
When I visit a Book show page
THen I see a link to update that Book "Update Book"
When I click the link
I am taken to '/books/:id/edit' where I see a form to edit the child's attributes:
When I click the button to submit the form "Update Book"
Then a `PATCH` request is sent to '/books/:id',
the book's data is updated,
and I am redirected to the Book Show page where I see the Book's updated information

User Story 15, Book Index only shows 'true' Records
As a visitor
When I visit the book index
Then I only see records where the boolean colum is 'true'

User Story 16, Sort Library's Book in Alpheabetical Order by name
As a visitor
When I visit the Library's book Index Page
Then I see a link
I'm taken back to the Parent's book Index Page where I see all of the library's children in alphabetical order

User Story 17, Library Update from Library Index Page
As a visitor
When I visit the library index page
Next to every library, I see a link to edit that library's info
WHen I click the link
I should be taken to that library's edit page where I can update its informmation just like in user story 12

User Story 18, Book Update from Books Index Page
As a visitor
When I visit the 'book' index page or a library 'book' index page when I click the link
I should be taken to that 'book' edit page where I can update its informatio njust like in User Story 14

User Story 19, Library Delete
As a visitor
When I visit a library show page
Then I see a link to delete the library
When I click the link "Delete Library"
Then a 'DELETE' request is sent to the '/libraries/:id',
the library is deleted, and all book records are deleted
and I am redirected to the library index page where I no longer see this library

User Story 20, Book Delete
As a visitor
When I visit a book show page
Then I see a link to delete the book "Delete Book"
When I click the lik
THen a 'DELETE' request is sent to '/books/:id'
the book is deleted,
and I am redirected to the book index page where I no longer see this book

User Story 21, Display Records Over a Given Threshold
As a visitor,
When I visit the Library's book Index Page
I see a form that allows me to input a number value
When I input a number value and click the submit button that reads 'Only return records with more than 'number' of 'column_name''
Then I am brought back to the current index page with only the records that meet that threshold shown

User Story 22, Library Delete from Library Index Page
As a visitor
When I visit the library index page
Next to every library, I see a link to delete that library
When I click the link
I am returned to the Library Index Page where I no longer see that library

User Story 23, Book Delete from Books Index Page
As a visitor
When I visit the 'book' index page or a 'library' book index page
Next to every book, I see a link to delete that book
When I click the link
I should be taken to the 'book' index page where I no longer see that book