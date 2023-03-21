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

User Story 3, Library Inventory:
As a visitor
When I visit '/libraries/:id'
Then I see all the attributes of that library and each books name and if it is available at that library.
EXAMPLE:
Denver Public Library 
  City: Denver
  Opening Time: 10:00
  Closing Time: 18:00
  Books:  Harry Potter and the Sorcerer's Stone, True
          Verity, False
          The Alchemist, True
          Milk and Honey, False

User Story 4, Zoo Animals Index:
As a visitor
When I visit '/libraries/:library_id/books'
Then I see a total count of all books that are associated with that library.
EXAMPLE:
 Total Books at Denver Public Library: 4
