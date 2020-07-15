CREATE DATABASE HAIR;
USE HAIR;

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
Shipping_Price DECIMAL(4,2)
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
Retail_Store VARCHAR(10),
FOREIGN KEY (Product_id) REFERENCES product_masterlist (Product_id)
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

-- Create an example query with group by where the product brands in the master list are grouped together

SELECT COUNT(Product_Brand) as total, Product_Brand
FROM Product_Masterlist
GROUP BY Product_Brand;

-- Create an event to add another row to our product masterlist table
Select * from product_masterlist;

CREATE EVENT IF NOT EXISTS Event2
ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 20 second
DO
INSERT INTO product_masterlist(Product_ID, Product_Name, Product_Category,Product_Hair_Texture, Product_Hair_Type,Product_Brand)
VALUES ('40', 'Wave Hello Shampoo','Shampoo','Wavy','2A','Noughty');

Select * from product_masterlist;
DELETE FROM Product_Masterlist WHERE Product_ID='40';

-- Create a stored procedure to retrieve all products from superdrug table

DELIMITER //
CREATE PROCEDURE AllProductsFromSuperdrug()
BEGIN
Select * from superdrug;
END //
DELIMITER ;

CALL AllProductsFromSuperdrug();

-- Queries+subqueries
-- which products from superdrug are suitable for those with coily hair?
SELECT product_name
FROM Superdrug
WHERE product_hair_texture = 'Coily';

-- find the products that have a rating of 3 and below
SELECT product_masterlist.product_id,product_masterlist.product_name,rating.rating
FROM product_masterlist
INNER JOIN Rating ON product_masterlist.product_id = rating.product_id;

-- Which products are vegan friendly and natural ingredients?
SELECT product_name
FROM Ethics
WHERE vegan = 'yes' AND natural_ingredients = 'yes';

-- Using limit- find at least 5 prouducts for coily hair
SELECT product_name, product_hair_texture
FROM product_masterlist 
WHERE product_hair_texture = 'Coily'
LIMIT 5;

-- Name of product brands beginning with L
SELECT* FROM retail_store WHERE product_brand LIKE'L%';

-- CREATES VIEW THAT SHOWS ALL PRODUCTS SOLD AT BOOTS FOR 5 POUNDS OR LESS
CREATE VIEW Product_boots AS
SELECT product_name, product_hair_type,product_price
FROM Boots
WHERE product_price <= '5';

-- Using any type of the joins create a view that combines multiple tables in a logical way
-- Create view showing order number for each product
Create View Product_Order AS 
Select product_masterlist.product_id, product_masterlist.product_name,retail_store.order_id
FROM product_masterlist 
INNER JOIN retail_Store ON product_masterlist.product_id = retail_store.product_id;

-- Create a view that uses at least 3-4 tables
Create view Product_Asos AS
Select product_masterlist.product_id, product_masterlist.product_name, retail_store.order_id, retail_store.retail_store
FROM product_masterlist
JOIN retail_store ON product_masterlist.product_id = retail_store.product_id 
WHERE retail_store = 'ASOS';

-- demonstrate a query that uses the view to produce a logically arranged result set for analysis
-- using the view What is the name of order_id 6887564 from asos 
SELECT product_id,product_name
From product_ASOS view
WHERE Order_id = 6887564;

-- CREATE TRIGGER and demonstrate how it is used
 CREATE TRIGGER tr_insert_product_m
 BEFORE INSERT ON product_masterlist
 FOR EACH ROW
 SET NEW.product_brand = UPPER(NEW.product_brand);
 -- Demonstrate the trigger works
 INSERT INTO product_masterlist (product_id,product_name,product_brand) VALUES (29,'Regina','Is the best');
 -- TRIGGER 2: UPDATE
CREATE TRIGGER tr_update_product_m
BEFORE UPDATE ON product_masterlist
FOR EACH ROW
SET NEW.product_brand = LOWER(NEW.product_brand);
SET SQL_SAFE_UPDATES = 0;
UPDATE product_masterlist SET
product_id = 29
WHERE product_brand ='Is the best';

