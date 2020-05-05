###########################################################
# CSCI 466 - Assignment 6 - Spring 2018
# 
# Progammer: Carlton Hunt
# Z-ID: Z1772974
# Section:
# TA:
# Date Due: March 22, 2018
# 
# Purpose: Query a table from the BabyName DB using SQL. 
############################################################


#1
SELECT FirstName, LastName FROM Owner ORDER BY LastName;

#2
SELECT AVG(RentalFee) FROM MarinaSlip;

#3
SELECT COUNT(ServiceID) AS "Requests" FROM ServiceRequest; SELECT SUM(SpentHours) AS "Hours" FROM ServiceRequest;

#4
SELECT MarinaNum, AVG(RentalFee) FROM MarinaSlip WHERE MarinaNum = '1';
SELECT MarinaNum, AVG(RentalFee) FROM MarinaSlip WHERE MarinaNum = '2';

#5
SELECT CategoryNum AS "Category Number", CategoryDescription AS "Category Description"
FROM ServiceCategory ORDER BY CategoryNum DESC;

# Question 6
SELECT DISTINCT City FROM Owner;

#7
SELECT COUNT(City) FROM Owner WHERE City = 'Bowton';

#8
SELECT Length, COUNT(Length) FORM MarinaSlip WHERE Length > 30;

#9
SELECT * FROM MarinaSlip WHERE BoatName LIKE 'a%';

#10
SELECT * FROM MarinaSlip WHERE RentalFee = '2500' or RentalFee = '2600' or RentalFee = '4000';
