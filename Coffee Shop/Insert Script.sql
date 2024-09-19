USE `coffeedb` ;

INSERT INTO Employees (EmployeeID, FirstName, LastName, Position, PhoneNumber, JoinDate) VALUES
(1, 'Emma', 'Wilson', 'Manager', '1234567890', '2022-01-10'),
(2, 'Liam', 'Taylor', 'Barista', '1234567891', '2022-01-15'),
(3, 'Olivia', 'Anderson', 'Cashier', '1234567892', '2022-02-01'),
(4, 'Noah', 'Thomas', 'Barista', '1234567893', '2022-02-10');

INSERT INTO Customers (customerID, firstname, lastname, email) VALUES
(1, 'John', 'Doe', 'john.doe@example.com'),
(2, 'Jane', 'Smith', 'jane.smith@example.com'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com'),
(4, 'Bob', 'Brown', 'bob.brown@example.com'),
(5, 'Harry', 'Pope', 'harry.p@example.com'),
(6, 'Joshua', 'Cool', 'jcool@example.com'),
(7, 'Tracy', 'Beaker', 'tbeaker@mail.com');

INSERT INTO Products (ProductID, ProductName, Category, Size, Price) VALUES
(1, 'Espresso', 'Beverage', 'Small', 3.50),
(2, 'Latte', 'Beverage', 'Large', 8.00),
(3, 'Cappuccino', 'Beverage', 'Medium', 6.00),
(4, 'Mocha', 'Beverage', 'Small', 3.50);

INSERT INTO Orders (OrderID, ProductID, CustomerID, EmployeeID, OrderDate, Quantity, Revenue) VALUES
(1, 4, 1, 1, '2023-01-01', 2, 7.00),
(2, 3, 2, 2, '2023-01-02', 1, 6.00),
(3, 2, 3, 3, '2023-01-03', 3, 24.00),
(4, 1, 4, 4, '2023-01-04', 2, 7.00),
(5, 2, 6, 2, '2023-01-05', 3, 24.00),
(6, 4, 7, 2, '2023-02-01', 5, 17.50);

SELECT * from products;
SELECT * from orders;
SELECT * from customers;
SELECT * from employees;