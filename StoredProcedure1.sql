CREATE PROCEDURE NewOrder1 @Customers_ID CHAR(10)
AS
-- Insert new order
INSERT INTO Orders(Customer_ID)
VALUES (@Customers_ID)
-- Return order number
SELECT order_num = @@IDENTITY; 