-- Create a table for 5 products with product names and prices
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Product A', 10.99),
(2, 'Product B', 15.49),
(3, 'Product C', 7.99),
(4, 'Product D', 12.99),
(5, 'Product E', 9.49);

-- Create a stored procedure to get the price of a product by its name
CREATE PROCEDURE GetProductPrice (
    IN productName VARCHAR(100),
    OUT productPrice DECIMAL(10, 2)
)
BEGIN
    SELECT Price INTO productPrice
    FROM Products
    WHERE ProductName = productName;
END;
-- Create a stored procedure to update the price of a product by its name
CREATE PROCEDURE UpdateProductPrice (
    IN productName VARCHAR(100),
    IN newPrice DECIMAL(10, 2)
)
BEGIN
    UPDATE Products
    SET Price = newPrice
    WHERE ProductName = productName;
END;