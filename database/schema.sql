-- Create database and tables for mock_products
DROP DATABASE IF EXISTS eccomerce;

CREATE DATABASE eccomerce;
USE mock_products;

CREATE TABLE manufacturers (
    manufacturer_id INT AUTO_INCREMENT PRIMARY KEY,
    manufacturer_name VARCHAR(100) NOT NULL
);

CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    manufacturer_id INT,
    product_model VARCHAR(100) NOT NULL,
    product_bar_code VARCHAR(50) UNIQUE,
    product_image VARCHAR(255),
    product_price DECIMAL(10, 2),
    product_quantity INT DEFAULT 0,
    product_description TEXT,
    category_id INT,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    date_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(manufacturer_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);