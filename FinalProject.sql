CREATE DATABASE HAIR_PROJECT;
USE HAIR_PROJECT;

-- All products in database listed in Product_Masterlist table
create table Product_Masterlist(
Product_ID Integer PRIMARY KEY NOT NULL,
Product_Name VARCHAR(75),
Product_Category VARCHAR(50),
Product_Hair_Texture VARCHAR(10),
Product_Hair_Type VARCHAR(2),
Product_Brand VARCHAR(50)
);

INSERT INTO Product_Masterlist 
(Product_ID, Product_Name, Product_Category,Product_Hair_Texture, Product_Hair_Type,Product_Brand) 
VALUES 
('1','Hair Cotten Blend Shampoo','Shampoo','Straight','1A','Aveeno'),
('2','Rosewater Sulfate-Free Miracle Moisture Boost', 'Shampoo', 'Straight','1A','Pantene'),
('3','Coconut Oil Formula Leave-In Conditioner','Leave-In Conditioner', 'Wavy','2B','Palmers'),
('4','Shea Butter Leave-In Conditioning Repair Cream','Leave-In Conditioner','Wavy','2C','Cantu'),
('5','Make It Last Wash N’ Go Conditioner','Conditioner','Wavy','2C','Sheamoisture'),
('6','Dont Shrink Elongating Gel','Gel','Coily','4B','Aunt Jackies'),
('7','The Pure', 'Shampoo', 'Wavy', '2A', 'One Atelier Fekkai'),
('8','Dream Lengths Restoring Conditioner', 'Conditioner', 'Straight','1A','LOreal'),
('9','Propure Light Moisture Conditioner',	'Conditioner', 'Straight', '1A','Tresemmé'),
('10','Care Between Washes Dry Shampoo Foam', 'Shampoo','Straight','1A','Dove'),
('11','Quenching Coconut Curls Mousse','Mousse','Curly','3A','Ogx'),
('12','Knot Today Leave-In Conditioner','Leave-In Conditioner','Curly','3B','Kinky Curly'),
('13','Leave-In Conditioner','Leave-In Conditioner','Curly','3C','Mixed Chicks'),
('14','Curling Custard Gel','Gel','Coily','4A','Kinky Curly'),
('15','Natural Curl Love Milk','Shampoo','Coily','4B','Camille Rose'),
('16','Twist Defining Cream','Cream','Coily','4C','As I Am'),
('17','Argan Buttermilk Leave-In Milk','Leave-In Conditioner','Coily','4C','Creme Of Nature'),
('18','Mongongo Oil','Oil','Coily','4A','Ouidad'),
('19','Anti-Frizz Gel','Gel', 'Curly','3A', 'Moptop'),
('20','The Replenisher Cleansing Conditioner','Conditioner','Curly','3B','Apothecare'),
('21','Bouncy Curls Defining Gel','Gel','Curly','3B','Tresemmé'),
('22','Moisture Rich Sulfate Free For Natural Hair', 'Shampoo','Curly','3C','Tgin'),
('23','Gel Ultimate Hold With Frizz Control','Gel','Wavy','2A','Curl Keeper'),
('24','Ultra Defining Gel', 'Gel','Wavy', '2B','Devacurl'),
('25','Melt Into Moisture Matcha Green Tea Butter Mask','Conditioner','Wavy','2C', 'Devacurl'),
('26','Super Dry Shampoo', 'Shampoo', 'Straight', '1A', 'Ouai'),
('27','Nutriplenish Leave-In Conditioner', 'Conditioner', 'Straight', '1A', 'Aveda'),
('28','Matcha + Apple Replenishing Superfood Shampoo', 'Shampoo','Wavy', '2A', 'Briogeo');

Select * from Product_Masterlist;

-- Products that can be bought in Superdrug listed here
create table Superdrug(
Product_ID Integer PRIMARY KEY NOT NULL,
Product_Name VARCHAR(75),
Product_Price DECIMAL(4,2),
Product_Hair_Texture VARCHAR(10),
Product_Hair_Type VARCHAR(2)
);

Select * from Superdrug;

-- Products that can be bought in Boots listed here
create table Boots(
Product_ID Integer PRIMARY KEY NOT NULL,
Product_Name VARCHAR(75),
Product_Price DECIMAL(4,2),
Product_Hair_Texture VARCHAR(10),
Product_Hair_Type VARCHAR(2),
Shipping_Price DECIMAL (4,2)
);

Select * from Boots;

-- Products that can be bought on Asos listed here
create table Asos(
Product_ID Integer PRIMARY KEY NOT NULL,
Product_Name VARCHAR(75),
Product_Price DECIMAL(4,2),
Product_Hair_Texture VARCHAR(10),
Product_Hair_Type VARCHAR(2)
);

Select * from Asos;

-- Ethical questions about products found in this table
create table Ethics(
Product_ID Integer PRIMARY KEY NOT NULL,
Product_Name VARCHAR(75),
Product_Brand VARCHAR(50),
Cruelty_Free VARCHAR(3),
Vegan VARCHAR(3),
Natural_Ingredients VARCHAR(3)
);

Select * from Ethics;

-- Chemicals found in products shown in this table
create table Chemicals(
Product_ID Integer PRIMARY KEY NOT NULL,
Product_Name VARCHAR(75),
Parabens VARCHAR(3),
Sulphates VARCHAR(3),
Silicones VARCHAR(3)
);

Select * from Chemicals;

-- Product Rating (out of 5 stars) found in this table
create table Rating(
Product_ID Integer PRIMARY KEY NOT NULL,
Product_Name VARCHAR(75),
Rating INTEGER
);

Select * from Rating;

-- Where to buy all the products found here. List of products and if they are found in boots/superdrug/asos.
create table Retail_Store(
Product_ID Integer,
Product_Name VARCHAR(75),
Order_Id INTEGER PRIMARY KEY NOT NULL,
Product_Brand VARCHAR(50),
Retail_Store VARCHAR(10)
);

Select * from Retail_Store;

-- Using a subquery to find the product name and product price of products that can be bought on Asos and are Vegan.
Select Product_Name, Product_Price
FROM Asos
WHERE Product_Name IN (
SELECT Product_Name
FROM Ethics
WHERE Vegan='Yes'
)
ORDER BY Product_Price DESC;

-- Create a stored procedure to create a full product name including brand
DELIMITER // 
CREATE PROCEDURE Full_Product_Name_And_Brand(Product_Brand VARCHAR(50),Product_Name VARCHAR(75))
BEGIN
DECLARE Full_Product_Name_And_Brand VARCHAR(200);
SET Full_Product_Name_And_Brand = CONCAT(Product_Brand, ' ',Product_Name);
SELECT Full_Product_Name_And_Brand;
END //

DELIMITER //
CALL Full_Product_Name_And_Brand('As I Am', 'Twist Defining Cream');
END //

-- Create an event where at the current time stamp, a value is inserted into product masterlist.

SET GLOBAL EVENT_SCHEDULER=ON;
DELIMITER //
CREATE EVENT IF NOT EXISTS event_1
ON SCHEDULE AT CURRENT_TIMESTAMP
DO
INSERT INTO Product_Masterlist VALUES ('31','Wave Hello Shampoo','Shampoo','Wavy','2B','Noughty');
END //

DELIMITER //
DELETE FROM Product_Masterlist WHERE Product_ID='31';
Select * from Product_Masterlist;
END //

-- Create a stored function for showing product name and rating together

DELIMITER //
CREATE FUNCTION Full_Product_Rating_And_Name(Product_Name VARCHAR(75),Rating Integer)
RETURNS VARCHAR(100) DETERMINISTIC
RETURN CONCAT(Product_Name,' ',Rating);
END //

-- Create an example query with group by where the product brands in the master list are grouped together
DELIMITER //
SELECT COUNT(Product_Brand) as total, Product_Brand
FROM Product_Masterlist
GROUP BY Product_Brand;
END //