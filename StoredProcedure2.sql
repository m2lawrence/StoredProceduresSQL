CREATE PROCEDURE NewOrder3 @cust_id CHAR(10)
AS
-- Declare variable for order number
DECLARE @order_num INTEGER
-- Get highest current order number
SELECT @order_num=MAX(Quantity)
FROM Orders
-- Determine next order number
SELECT @order_num=@order_num+1
-- Insert new order
INSERT INTO Orders(ID, Customer_ID)
VALUES (@order_num, @cust_id)
-- Return order number
RETURN @order_num;