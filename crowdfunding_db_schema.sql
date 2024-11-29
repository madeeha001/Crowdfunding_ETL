CREATE TABLE category(
category_id VARCHAR(10) PRIMARY KEY NOT NULL,
category VARCHAR(20));

CREATE TABLE subcategory(
subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
subcategory VARCHAR(20)
);


CREATE TABLE contacts(
contact_id INT PRIMARY KEY NOT NULL,
first_name VARCHAR(30),
last_name VARCHAR(30),
email VARCHAR(50));


CREATE TABLE campaign(
cf_id INT,
contact_id INT ,
company VARCHAR(50),
description VARCHAR(255),
goal DECIMAL,
pledged DECIMAL,
outcome VARCHAR(20),
backers_count int,
country VARCHAR(20),
currency VARCHAR(10),
launched_date DATE,
end_date DATE,
category_id VARCHAR(10),
subcategory_id VARCHAR(10),
FOREIGN KEY(contact_id) REFERENCES contacts(contact_id),
FOREIGN KEY (category_id) REFERENCES category(category_id),
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id));

