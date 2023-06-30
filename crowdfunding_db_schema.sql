-- Project 2 Crowdfunding Code

-- Drop any existing tables before creating new tables
-- Drop Table If Exists contacts Cascade;
-- Drop Table If Exists category Cascade;
-- Drop Table If Exists subcategory Cascade;
-- Drop Table If Exists campaign Cascade;

-- Create Table contacts (
-- 	contact_id Int Not Null,
-- 	first_name Varchar(20) Not Null,
-- 	last_name Varchar(20) Not Null,
-- 	email Varchar(50) Not Null,
-- 	Primary Key (contact_id)
-- )
-- ;

-- Create Table category (
-- 	category_id Varchar(10) Not Null,
-- 	category Varchar(20) Not Null,
-- 	Primary Key (category_id)
-- )
-- ;

-- Create Table subcategory (
-- 	subcategory_id Varchar(10) Not Null,
-- 	subcategory Varchar(20) Not Null,
-- 	Primary Key (subcategory_id)
-- )
-- ;

-- Create Table campaign (
-- 	cf_id Int Not Null,
-- 	contact_id Int Not Null,
-- 	company_name Varchar(50) Not Null,
-- 	description Varchar(80) Not Null,
-- 	goal Money Not Null,
-- 	pledged Money Not Null,
-- 	outcome Varchar(20) Not Null,
-- 	backers_count Int Not Null,
-- 	country Varchar(10) Not Null,
-- 	currency Varchar (10) Not Null,
-- 	launch_date Date Not Null,
-- 	end_date Date Not Null,
-- 	category_id Varchar(10) Not Null,
-- 	subcategory_id Varchar(10) Not Null,
-- 	Foreign Key (contact_id) References contacts (contact_id),
-- 	Foreign Key (category_id) References category (category_id),
-- 	Foreign Key (subcategory_id) References subcategory (subcategory_id)
-- )
-- ;

-- Run Select to veryify table creation for each table
-- Select * From contacts;

-- Select * From category;

-- Select * From subcategory;

-- Select * From campaign;

-- Import CSV data in order of table creation: contacts, category, subcategory, and campaign

-- Run Select to veryify each table has the correct data
-- Select * From contacts;

-- Select * From category;

-- Select * From subcategory;

-- Select * From campaign;

-- BONUS QUERY
-- Join all four tables; select country, category, subcategory
-- Show total pledged for US only and for categories music and film & video only in descending order
-- Select country, category, subcategory, sum(pledged) as total_pledged
-- From contacts con
-- Join campaign camp on con.contact_id = camp.contact_id
-- Join category cat on camp.category_id = cat.category_id
-- Join subcategory sub on camp.subcategory_id = sub.subcategory_id
-- Where country = 'US' And category = 'music' Or country = 'US' And category = 'film & video'
-- Group By country, category, subcategory
-- Order By total_pledged Desc
-- ;
