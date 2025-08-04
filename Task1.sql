CREATE TABLE `Customers` (
  `CustomerID` int PRIMARY KEY AUTO_INCREMENT,
  `Name` varchar(255),
  `Email` varchar(255) UNIQUE,
  `Phone` varchar(255)
);

CREATE TABLE `Orders` (
  `OrderID` int PRIMARY KEY AUTO_INCREMENT,
  `CustomerID` int,
  `OrderDate` date
);

CREATE TABLE `Categories` (
  `CategoryID` int PRIMARY KEY AUTO_INCREMENT,
  `CategoryName` varchar(255)
);

CREATE TABLE `Products` (
  `ProductID` int PRIMARY KEY AUTO_INCREMENT,
  `Name` varchar(255),
  `Price` decimal,
  `CategoryID` int
);

CREATE TABLE `OrderItems` (
  `OrderItemID` int PRIMARY KEY AUTO_INCREMENT,
  `OrderID` int,
  `ProductID` int,
  `Quantity` int
);

ALTER TABLE `Orders` ADD FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`);

ALTER TABLE `Products` ADD FOREIGN KEY (`CategoryID`) REFERENCES `Categories` (`CategoryID`);

ALTER TABLE `OrderItems` ADD FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`);

ALTER TABLE `OrderItems` ADD FOREIGN KEY (`ProductID`) REFERENCES `Products` (`ProductID`);
