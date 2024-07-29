-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;


-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- CREATE A CATEGORY TABLE 
CREATE TABLE category (
    id SERIAL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

-- CREATE A PRODUCT TABLE
CREATE TABLE product (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price VARCHAR(100) NOT NULL,
    stock VARCHAR(10) NOT NULL,
    category_id INTEGER,
    FOREIGN KEY category_id
    REFERENCES category(id)
);

-- CREATE A TAG TABLE
CREATE TABLE tag (
    id SERIAL PRIMARY KEY,
    tag_name VARCHAR(100)
),

-- CREATE A PRODUCT TAG TABLE 
CREATE TABLE productTag (
    id VARCHAR(100) NOT NULL,
    product_id INTEGER,
    tag_id INTEGER,
    FOREIGN KEY product_id
    REFERENCES product_id,
    FOREIGN KEY tag_id
    REFERENCES tag(id)
);