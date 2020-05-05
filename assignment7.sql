########################################################
# CSCI 466 - Assignment 7 - Spring 2018
#
# Progammer: Carlton Hunt
# Z-ID: Z1772974
# Section: 1
# TA: Ishaan Mohammed
# Date Due: 03/28/2018
# Purpose: SQL queries
########################################################

# 1 Table Owner creation
DROP VIEW showPetAndOwner;
DROP TABLE Pet;
DROP TABLE Owner;

# 2 insert 5 rows
CREATE TABLE Owner (ownerId integer AUTO_INCREMENT, firstName char(10), lastName  char(10), primary key (ownerId));

# 3 insert values
INSERT INTO Owner (firstName, lastName) VALUES('Brianna', 'Elias');
INSERT INTO Owner (firstName, lastName) VALUES('Carlton', 'Hunt');
INSERT INTO Owner (firstName, lastName) VALUES('Emma', 'Ortiz');
INSERT INTO Owner (firstName, lastName) VALUES('Kris', 'Bryant');
INSERT INTO Owner (firstName, lastName) VALUES('Anthony', 'Rizzo');

# 4 display all records
SELECT * FROM Owner;

# 5 Create table
CREATE TABLE Pet (petId integer AUTO_INCREMENT, petName char(20), petDOB  char(20), ownerId int, PRIMARY KEY (petId), FOREIGN KEY (ownerId) REFERENCES Owner (ownerId));

#6 Insert 5 records
INSERT INTO Pet (petName, petDOB, ownerId) VALUES ('Nala','03/09/14', '1' );
INSERT INTO Pet (petName, petDOB, ownerId) VALUES ('Selena', '06/08/10', '2' );
INSERT INTO Pet (petName, petDOB, ownerId) VALUES ('Gabby', '01/12/14', '3' );
INSERT INTO Pet (petName, petDOB, ownerId) VALUES ('Ginger', '06/06/12', '3' );
INSERT INTO Pet (petName, petDOB, ownerId) VALUES ('Lion', '08/01/13', '5' );

# 7 show all records from Pet
SELECT * FROM Pet;

# 8 add column to Pet Table
ALTER TABLE Pet ADD (type char(30));

# 9 Update
UPDATE Pet SET type='Cat' WHERE petName = 'Nala';
UPDATE Pet SET type='Cat' WHERE petName = 'Selena';
UPDATE Pet SET type='Dog' WHERE petName = 'Gabby';
UPDATE Pet SET type='Dog' WHERE petName = 'Ginger';
UPDATE Pet SET type='Fish' WHERE petName = 'Lion';

# 10 Change column type
ALTER TABLE Pet MODIFY petDOB DATE;

# 11 show all records
SELECT * FROM Pet;

# 12 change view
CREATE VIEW showPetAndOwner AS SELECT Pet.petName, Owner.firstName, Owner.lastName FROM Pet JOIN Owner WHERE Pet.ownerId = Owner.ownerId;

# 13 show all records
SELECT * FROM showPetAndOwner;
