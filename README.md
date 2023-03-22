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
As a visitor
When I visit '/libraries'
Then I see the name of each library
EXAMPLE:
  Library Names: 
    - Denver Public Library
    - Douglas County Library

User Story 2, Book Index:
As a visitor
When I visit '/books'
Then I see the attributes of each book
EXAMPLE: 
  Title: Harry Potter and the Sorcerer's Stone
  Author: J.K. Rowling
  Fiction: True
  Number of Copies: 2

User Story 3, Library Inventory:
As a visitor
When I visit '/libraries/:id'
Then I see all the attributes of that library and each books name, if it is available, and number of copies associated at that library.
EXAMPLE:
Denver Public Library 
  City: Denver
  Opening Time: 10:00
  Closing Time: 18:00
  Books:  Harry Potter and the Sorcerer's Stone, True, 2
          Verity, False, 0
          The Alchemist, True, 1
          Milk and Honey, False, 0

User Story 4, Zoo Animals Index:
As a visitor
When I visit '/libraries/:library_id/books'
Then I see a total count of all books that are associated with that library.
EXAMPLE:
 Total Books at Denver Public Library: 4