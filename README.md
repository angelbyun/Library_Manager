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