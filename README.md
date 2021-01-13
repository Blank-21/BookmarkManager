How to connect to the SQL | Connect to psql
Create the database using the psql command CREATE DATABASE bookmark_manager;
Connect to the database using the pqsl command \c bookmark_manager;
Run the query we have saved in the file 01_create_bookmarks_table.sql
Make sure your README is updated with clear instructions to guide the developer through these steps. | Header Two     |
| :------------- | :------------- |
| Item One       | Item Two       |

also : follow the steps above for the test database



-----
User Story 1:
As a user,
So that i can visit websites quickly
i would like to be able to see a list of all bookmarks


|/list_of_bookmarks| -> get request/ response -> | Bookmark_program | <-> |view/ index|


User story 2:
As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
