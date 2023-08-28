-- Seed data for the database
USE mock_products;

INSERT INTO manufacturers (manufacturer_name)
VALUES
    ('Manufacturer-A'),
    ('Manufacturer-B'),
    ('Manufacturer-C');

INSERT INTO categories (category_name)
VALUES
    ('Category-A'),
    ('Category-B'),
    ('Category-C');

INSERT INTO products (
    manufacturer_id, 
    product_model, 
    product_bar_code, 
    product_image, 
    product_price, 
    product_quantity, 
    product_description, 
    category_id)
VALUES
    (1, 'Product-A', '123456789', 'product-a.jpg', 100.00, 10, 'Product A description', 1),
    (2, 'Product-B', '12345678', 'product-b.jpg', 200.00, 20, 'Product B description', 2),
    (3, 'Product-C', '1234567', 'product-c.jpg', 300.00, 30, 'Product C description', 3),
    (1, 'Product-D', '123456', 'product-d.jpg', 4000.00, 1, 'Product D description', 1),
    (2, 'Product-E', '12345', 'product-e.jpg', 5000.00, 0, 'Product E description', 2);
