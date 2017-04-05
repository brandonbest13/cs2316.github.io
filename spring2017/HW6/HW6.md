---
layout: homework
title: Homework 6 - GT_schedj
---

# Homework 6 - GT_schedj

## Introduction

A common task in data management systems is receiving data from an external system in text files and storing it in a relational database. Python includes libraries for easily reading XML files and interacting with databases. We store data in databases for record keeping and so that we can answer questions about the data.

In this assignment you will

- create a SQLite database using provided database creation scripts,
- write a Python function that parses an textual data file and inserts the data from it into the database, and
- write a Python class to build a GUI that queries and inserts into the database as necessary.
# Problem Description

Courseoff is in a state of disrepair and T-Square is... well, T-Square. You need to create a new stand-alone Course Catalog for GaTech with optional extra features to help students (and maybe professors) plan and register for classes. It doesn't have to be pretty, just functional. We will import course and student information using CSV/XML files and store everything in a database for easy querying

# Solution Description

You'll store data in a SQLite database and import data from XML and CSV files using a Python script. You will build a GUI using PyQt to allow easy access to relevant information from the database

### Preparing Your Database

You've been provided with a database script to create the database (download [`schedj-schema.sql`](schedj-schema.sql)). Run `sqlite3` with the database file name `GTcatalog.db` as an argument and run your database creation script on this database.  This will look something like:

```sh
$ sqlite3 GT.db
SQLite version 3.7.9 2011-11-01 00:52:41
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> .read schedj-schema.sql
sqlite> .exit
```

After the session above the current directory will have a file called `GT.db` with empty tables.

## Importing XML Data into a Database

Write a Python function `xml_to_db(xml_file, db)` that reads an XML file and inserts the Student data contained in the XML file into the `Student` table of the database specified.

## Importing CSV Data into a Database

Write a Python function `csv_to_db(csv_file, db, table_name)` that reads in a CSV file and inserts the data into the db using the column name specified.


## The GUI class

Your script should have a class that represents a GUI object. This class should accept a connection object as a parameter and build a GUI with the following features:

### Login Page
The login page should have 2 labels describing the username and password entry boxes. This page must also have a button that, when clicked checks the credentials and gives a warning message if the username and password combination are not in the database or advances to the next page if they are.

### Courses Page
This window should list out the available courses and have a back button allowing the user to log out.

## Main
The main function should take in command line arguments and will be called in the following manner:
`$ python HW6.py GT.db students.xml courses.csv admins.csv`
You should then manage your database as necessary using the filenames provided and your `xml_to_db` and `csv_to_db` functions before instantiating a GUI object using a connection object for the database passed in as the first argument.

## Rubric
- 15 points xml_to_db implemented correctly
- 15 points csv_to_db implemented correctly
- 20 points properly create GT.db and populate it
- 25 points Login Page works as described and only advances if credentials are valid
- 25 points Courses Page displays available courses and includes a back button that goes to the Login Page

# Extra Credit

## Scheduling Tool
You have been asked to include a scheduler so that students have a viable replacement for Courseoff and Oscar. The following are requested:

### Student Registration feature (15 points)
Allow students to register for a course by implementing
- a table in GT.db called `registered` that holds a Student.username and Course.CRN to represent a student being registered for that class.
- a button on the Courses Page that says "register" and allows the Student currently logged-in to register for a class (insert a row into the registered table with the values student's username and course CRN).

### Visual Scheduler (20 points)
A button on the Courses Page labeled "Weekly View" should bring up a window that shows what the student schedule looks like based on the courses that are currently in the registered table matching the logged-in Student's username.

### Implement Restrictions (25 points)
Included in the courses.csv are restrictions for major and year; a student must also have less than or equal to 21 credit hours and no overlapping class times. If the current student tries to register for a course does not meet those 4 restriction requirements, your program should present a warning message; and the registration for that course should fail.
- 5 points for each type of restriction properly implemented
- 5 points for the warning message giving the specific kind of restriction that caused conflict.

### Admin Utility (30 points)
Professors are considered Admins and have a special view when they log in. You should have an Admin table using the provided admin.csv
If the credentials given on the Login Page do not match a Student, but do match an Admin, the login button should direct to a page title "Admin View" with the number of students currently registered for the course taught by the admin user.
The Admin View page should also have a "back" or "logout" button that redirects to the Login Page so a Student or another Admin can sign in.

### Aesthetic Appeal (10 points)
Nobody likes an ugly GUI, so here's a little incentive to make it look nice and pretty. (niceness and prettiness are at the discretion of your grading TA, so consider your audience)

## Tips

- Review the [example SQL code](https://github.com/cs2316/cs2316.github.io/tree/master/code/databases) on the course web site.
- The Weekly View can be as 'pretty' as anything from Oscar's Week-at-a-glance to Courseoff
- For the Aesthetic Appeal component, consider using different colors, fonts, and maybe even images (just remember to submit all necessary files when you submit the hw to T-Square).

## Turn-in Procedure

Submit your `HW6.py` and `GT.db` files on T-Square as attachments.  When you're ready, double-check that you have submitted and not just saved a draft.

## Verify Your T-Square Submission!

Practice safe submission! Verify that your HW files were truly submitted correctly, the upload was successful, and that your program runs with no syntax or runtime errors. It is solely your responsibility to turn in your homework and practice this safe submission safeguard.

- After uploading the files to T-Square you should receive an email from T-Square listing the names of the files that were uploaded and received. If you do not get the confirmation email almost immediately, something is wrong with your HW submission and/or your email. Even receiving the email does not guarantee that you turned in exactly what you intended.
- After submitting the files to T-Square, return to the Assignment menu option and this homework. It should show the submitted files.
- Download copies of your submitted files from the T-Square Assignment page placing them in a new folder.
- Re-run and test the files you downloaded from T-Square to make sure it's what you expect.
- This procedure helps guard against a few things.

    - It helps insure that you turn in the correct files.
    - It helps you realize if you omit a file or files. Missing files will not be given any credit, and non-compiling homework solutions will receive few to zero points. Also recall that late homework will not be accepted regardless of excuse. Treat the due date with respect.  Do not wait until the last minute! (If you do discover that you omitted a file, submit all of your files again, not just the missing one.)
    - Helps find syntax errors or runtime errors that you may have added after you last tested your code.
