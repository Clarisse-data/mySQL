-- Create schema if it doesn't exist
CREATE SCHEMA IF NOT EXISTS coffeedb DEFAULT CHARACTER SET utf8;
USE coffeedb;

-- Create Products table
CREATE TABLE Products (
  ProductID INT NOT NULL,
  ProductName VARCHAR(25) NOT NULL,
  Category VARCHAR(20) NOT NULL,
  Size VARCHAR(10) NOT NULL,
  Price DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (ProductID)
);

-- Create Customers table
CREATE TABLE Customers (
  CustomerID INT NOT NULL,
  FirstName VARCHAR(45) NOT NULL,
  LastName VARCHAR(45) NOT NULL,
  Email VARCHAR(45) NULL,
  PRIMARY KEY (CustomerID)
);

-- Create Employees table
CREATE TABLE Employees (
  EmployeeID INT NOT NULL,
  FirstName VARCHAR(45) NOT NULL,
  LastName VARCHAR(45) NOT NULL,
  Position VARCHAR(45) NOT NULL,
  PhoneNumber INT NOT NULL,
  JoinDate DATE NOT NULL,
  PRIMARY KEY (EmployeeID)
);

-- Create Orders table
CREATE TABLE Orders (
  OrderID INT NOT NULL,
  ProductID INT NOT NULL,
  CustomerID INT NOT NULL,
  EmployeeID INT NOT NULL,
  OrderDate DATE NOT NULL,
  Quantity INT NOT NULL,
  Revenue DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (OrderID),
  FOREIGN KEY (ProductID) REFERENCES Products (ProductID),
  FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID),
  FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID)
);

-- Reset SQL mode and checks if necessary
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
