CREATE DATABASE HAIR;
USE HAIR;

-- All products in database listed in Product_Masterlist table
create table product_masterlist(
product_id Integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
product_name VARCHAR(75),
product_category VARCHAR(50),
product_hair_texture VARCHAR(10),
product_hair_type VARCHAR(2),
product_brand VARCHAR(50)
);

INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES (1,'Hair Cotten Blend Shampoo','Shampoo','Straight','1A','Aveeno');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES (2,'Rosewater Sulfate-Free Miracle Moisture Boost', 'Shampoo', 'Straight','1A','Pantene');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES (3,'Coconut Oil Formula Leave-In Conditioner','Leave-In Conditioner', 'Wavy','2B','Palmers');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES (4,'Shea Butter Leave-In Conditioning Repair Cream','Leave-In Conditioner','Wavy','2C','Cantu');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES (5,'Make It Last Wash N’ Go Conditioner','Conditioner','Wavy','2C','Sheamoisture');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES (6,'Dont Shrink Elongating Gel','Gel','Coily','4B','Aunt Jackies');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES (7,'The Pure', 'Shampoo', 'Wavy', '2A', 'One Atelier Fekkai');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES (8,'Dream Lengths Restoring Conditioner', 'Conditioner', 'Straight','1A','LOreal');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES (9,'Propure Light Moisture Conditioner',	'Conditioner', 'Straight', '1A','Tresemmé');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES (10,'Care Between Washes Dry Shampoo Foam', 'Shampoo','Straight','1A','Dove');
INSERT INTO product_masterlist (product_id,product_name,product_category,product_hair_texture,product_hair_type,product_brand) VALUES (11,'Quenching Coconut Curls Mousse','Mousse','Curly','3A','Ogx');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES ( 12,'Knot Today Leave-In Conditioner','Leave-In Conditioner','Curly','3B','Kinky Curly');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES (13,'Leave-In Conditioner','Leave-In Conditioner','Curly','3C','Mixed Chicks');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES ( 14,'Curling Custard Gel','Gel','Coily','4A','Kinky Curly');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES (15,'Natural Curl Love Milk','Shampoo','Coily','4B','Camille Rose');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES ( 16,'Twist Defining Cream','Cream','Coily','4C','As I Am');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES ( 17,'Argan Buttermilk Leave-In Milk','Leave-In Conditioner','Coily','4C','Creme Of Nature');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES ( 18,'Mongongo Oil','Oil','Coily','4A','Ouidad');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES ( 19,'Anti-Frizz Gel','Gel', 'Curly','3A', 'Moptop');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES ( 20,'The Replenisher Cleansing Conditioner','Conditioner','Curly','3B','Apothecare');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES ( 21,'Bouncy Curls Defining Gel','Gel','Curly','3B','Tresemmé');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES ( 22,'Moisture Rich Sulfate Free For Natural Hair', 'Shampoo','Curly','3C','Tgin');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES (23,'Gel Ultimate Hold With Frizz Control','Gel','Wavy','2A','Curl Keeper');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES ( 24,'Ultra Defining Gel', 'Gel','Wavy', '2B','Devacurl');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES (25,'Melt Into Moisture Matcha Green Tea Butter Mask','Conditioner','Wavy','2C', 'Devacurl');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES (26, 'Super Dry Shampoo', 'Shampoo', 'Straight', '1A', 'Ouai');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES ( 27,'Nutriplenish Leave-In Conditioner', 'Conditioner', 'Straight', '1A', 'Aveda');
INSERT INTO product_masterlist (product_id,product_name, product_category,product_hair_texture, product_hair_type,product_brand) VALUES (28, 'Matcha + Apple Replenishing Superfood Shampoo', 'Shampoo','Wavy', '2A', 'Briogeo');
Select * FROM product_masterlist;

-- Products that can be bought in Superdrug listed here
create table superdrug(
product_id Integer PRIMARY KEY NOT NULL,
product_name VARCHAR(75),
product_price DECIMAL(4,2),
product_hair_texture VARCHAR(10),
product_hair_type VARCHAR(2)
);
INSERT INTO superdrug (product_id,product_name,product_price,product_hair_type,product_hair_type) VALUES (1,'Rosewater Sulfate-Free Miracle Moisture Boost',3.99,'Straight','1A');

-- Products that can be bought in Boots listed here
create table boots(
product_id Integer PRIMARY KEY NOT NULL,
product_name VARCHAR(75),
product_price DECIMAL(4,2),
product_hair_texture VARCHAR(10),
product_hair_type VARCHAR(2),
shipping_price DECIMAL (4,2)
);
INSERT INTO boots(product_id,product_name,product_price,product_hair_texture,product_hair_type,shipping_price) VALUES (1,'Shea Butter Leave-In Conditioning Repair Cream',7.99,'Wavy','2C',2.99);

-- Products that can be bought on Asos listed here
create table asos(
product_id Integer PRIMARY KEY NOT NULL,
product_name VARCHAR(75),
product_price DECIMAL(4,2),
product_hair_texture VARCHAR(10),
product_hair_type VARCHAR(2)
);
INSERT INTO asos (product_id,product_name,product_price,product_hair_texture,product_hair_type) VALUES (1,'Hair Cotton Blend Shampoo',11.99,'Straight','1A');

-- Ethical questions about products found in this table
create table ethics(
product_id Integer PRIMARY KEY NOT NULL,
product_name VARCHAR(75),
product_brand VARCHAR(50),
cruelty_free VARCHAR(3),
vegan VARCHAR(3),
natural_ingredients VARCHAR(3)
);
ALTER TABLE ethics
DROP COLUMN product_brand;
INSERT INTO ethics (product_id,product_name,product_brand,cruelty_free,vegan,natural_ingredients) VALUES (1,'Hair Cotton Blend Shampoo','Yes','No','Yes');


-- Chemicals found in products shown in this table
create table chemicals(
product_id Integer PRIMARY KEY NOT NULL,
product_name VARCHAR(75),
parabens VARCHAR(3),
sulphates VARCHAR(3),
silicones VARCHAR(3)
);
INSERT INTO chemicals (product_id, product_name,parabens,sulphates,silicones) VALUES (1,'Hair Cotton Blend Shampoo','No','Yes','Yes');


-- Product Ratings (out of 5 stars) found in this table
create table rating(
product_id Integer PRIMARY KEY NOT NULL,
product_name VARCHAR(75),
rating INTEGER
);
INSERT INTO rating (product_id,product_name, rating) VALUES (1,'Hair Cotton Blend Shampoo', 3);

-- Where to buy all the products found here. List of products and if they are found in boots/superdrug/asos.
create table retail_store(
product_id Integer,
product_name VARCHAR(75),
order_id INTEGER PRIMARY KEY NOT NULL,
product_brand VARCHAR(50),
retail_store VARCHAR(10)
);
ALTER TABLE retail_store
ADD FOREIGN KEY (product_id) REFERENCES product_masterlist (Product_id);
desc retail_store;

-- Queries+subqueries
-- which products from superdrug are suitable for those with coily hair?
SELECT product_name
FROM superdrug
WHERE product_hair_texture = 'Coily';

-- find the products that have a rating of 3 and below
SELECT product_masterlist.product_id,product_masterlist.product_name,rating.rating
FROM product_masterlist
INNER JOIN rating ON product_masterlist.product_id = rating.product_id;

-- Which products are vegan friendly and natural ingredients?
SELECT product_name
FROM ethics
WHERE vegan = 'yes' AND natural_ingredients = 'yes';

-- Using limit- find at least 5 prouducts for coily hair
SELECT product_name, product_hair_texture
FROM product_masterlist 
WHERE product_hair_texture = 'Coily'
LIMIT 5;

-- Name of product brands beginning with L
SELECT* FROM retail_store WHERE product_brand LIKE'L%';

-- CREATES VIEW THAT SHOWS ALL PRODUCTS SOLD AT BOOTS FOR 5 POUNDS OR LESS
CREATE VIEW product_boots AS
SELECT product_name, product_hair_type,product_price
FROM boots
WHERE product_price <= '5';

-- Using any type of the joins create a view that combines multiple tables in a logical way
-- Create view showing order number for each product
Create View product_order AS 
Select product_masterlist.product_id, product_masterlist.product_name,retail_store.order_id
FROM product_masterlist 
INNER JOIN retail_Store ON product_masterlist.product_id = retail_store.product_id;

-- Create a view that uses at least 3-4 tables
Create view product_asos AS
Select product_masterlist.product_id, product_masterlist.product_name, retail_store.order_id, retail_store.retail_store
FROM product_masterlist
JOIN retail_store ON product_masterlist.product_id = retail_store.product_id 
WHERE retail_store = 'asos';

-- demonstrate a query that uses the view to produce a logically arranged result set for analysis
-- using the view What is the name of order_id 6887564 from asos 
SELECT product_id,product_name
From product_asos view
WHERE order_id = 6887564;

-- CREATE TRIGGER and demonstrate how it is used
 CREATE TRIGGER tr_insert_product_m
 BEFORE INSERT ON product_masterlist
 FOR EACH ROW
 SET NEW.product_brand = UPPER(NEW.product_brand);
 -- Demonstrate the trigger works 
 INSERT INTO product_masterlist (product_name,product_brand) VALUES ('Regina', 'Is the best');

 -- TRIGGER 2: UPDATE
CREATE TRIGGER tr_update_product_m
BEFORE UPDATE ON product_masterlist
FOR EACH ROW
SET NEW.product_brand = LOWER(NEW.product_brand);

UPDATE product_masterlist SET
product_id = 31
WHERE product_brand = 'Is the best';
SET SQL_SAFE_UPDATES = 0;

-- Using a subquery to find the product name and product price of products that can be bought on Asos and are Vegan.
Select product_name, product_price
FROM asos
WHERE product_name IN (
SELECT product_name
FROM ethics
WHERE vegan='Yes'
)
ORDER BY product_price DESC;

-- Create a stored procedure to create a full product name including brand
DELIMITER // 
CREATE PROCEDURE full_product_name_and_brand(product_brand VARCHAR(50),product_name VARCHAR(75))
BEGIN
DECLARE full_product_name_and_brand VARCHAR(200);
SET full_product_name_and_brand = CONCAT(product_brand, ' ',product_name);
SELECT full_product_name_and_brand;
END //

DELIMITER //
CALL full_product_name_and_brand('As I Am', 'Twist Defining Cream');
END //

-- Create an event where at the current time stamp, a value is inserted into product masterlist.

SET GLOBAL EVENT_SCHEDULER=ON;
DELIMITER //
CREATE EVENT IF NOT EXISTS event_1
ON SCHEDULE AT CURRENT_TIMESTAMP
DO
INSERT INTO product_masterlist VALUES ('31','Wave Hello Shampoo','Shampoo','Wavy','2B','Noughty');
END //

DELIMITER //
DELETE FROM product_masterlist WHERE product_id='32';
Select * from product_masterlist;
END //

-- Create a stored function for showing product name and rating together

DELIMITER //
CREATE FUNCTION full_product_rating_and_name(product_name VARCHAR(75),rating Integer)
RETURNS VARCHAR(100) DETERMINISTIC
RETURN CONCAT(product_name,' ',rating);
END //

-- Create an example query with group by where the product brands in the master list are grouped together
DELIMITER //
SELECT COUNT(product_brand) as total, product_brand
FROM product_masterlist
GROUP BY product_brand;
END //

-- The end.