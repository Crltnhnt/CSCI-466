###########################################################
# CSCI 466 - Assignment 5 - Spring 2018
# 
# Progammer: Carlton Hunt
# Z-ID: Z1772974
# Section: 1
# TA: Ishaan Mohammed 
# Date Due: 03/02/2018
# 
# Purpose: SQL queries on a single table 
############################################################


# 1. Show all of the tables in the database.
SHOW DATABASES;
USE BabyName;
SHOW TABLES;


# 2. Show all of the columns and other information about all of tables in the databases.
DESCRIBE BabyName;


# 3. Show all of the years (once only) where your first name appears.
SELECT distinct year FROM BabyName WHERE name="Carlton" limit 50;


# 4. Show all of the names from your birth year
SELECT distinct name FROM BabyName WHERE year="1995" limit 50;


# 5. What is the most popular male and female names from your birth year?
SELECT distinct name, count name, gender FROM BabyName WHERE year="1995" GROUP by gender;


# 6. Show all the information about names similar to your name (or the one you used above) in
#     alphabetic order of the name, and within that of the count, and then of the year.
SELECT distinct name, count, year FROM BabyName WHERE name like("Carlton") GROUP by name limit 50;

# 7.How many rows are in the table?
SELECT count(*) "Rows" FROM BabyName;


# 8. How many names are there in the year 1960?
SELECT distinct count(name) "Names" FROM BabyName WHERE year = '1960';


# 9. How many names are there for each sex from the year of your father’s birth?
SELECT distinct count(name) "Names", gender FROM BabyName WHERE year = '1968' GROUP by gender;


# 10. List how many different names there are for each place.
SELECT distinct count (name) "Names", place FROM BabyName GROUP by place limit 50;

