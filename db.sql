CREATE TABLE Person (
ID INTEGER PRIMARY KEY AUTOINCREMENT,
Name string,
Age integer,
Height integer,
City string,
FavoriteColor string );


INSERT INTO Person
    ( Name, Age, Height, City, FavoriteColor )
VALUES
    ( "John T", 27, 200, "Dallas", "Gray" );
INSERT INTO Person
    ( Name, Age, Height, City, FavoriteColor )
VALUES
    ( "Mike R", 52, 192, "Houston", "Blue" );
INSERT INTO Person
    ( Name, Age, Height, City, FavoriteColor )
VALUES
    ( "Tube-man", 100, 6000, "Tube-Land", "Rainbow" );
INSERT INTO Person
    ( Name, Age, Height, City, FavoriteColor )
VALUES
    ( "Flying Death", 4, 18, "A Tree", "Acorns" );
INSERT INTO Person
    ( Name, Age, Height, City, FavoriteColor )
VALUES
    ( "Oh god no why!?", 21, 204, "Gotham", "Sometimes" );


SELECT *
FROM Person
ORDER BY Height DESC;

SELECT *
FROM Person
ORDER BY Height ASC;

SELECT *
FROM Person
ORDER BY Age DESC;

SELECT *
FROM Person
WHERE Age>20;

SELECT *
FROM Person
WHERE Age=18;

SELECT *
FROM Person
WHERE Age<20 AND Age>30;

SELECT *
FROM Person
WHERE Age != 27;

SELECT *
FROM Person
WHERE FavoriteColor != "Red";

SELECT *
FROM Person
WHERE FavoriteColor != "Red" AND FavoriteColor != "Blue";

SELECT *
FROM Person
WHERE FavoriteColor = "Orange" OR FavoriteColor = "Green";

SELECT *
FROM Person
WHERE FavoriteColor IN ("Orange", "Green", "Blue");

SELECT *
FROM Person
WHERE FavoriteColor IN ("Yellow", "Purple");

CREATE TABLE Orders
(
    PersonID integer,
    ProductName string,
    ProductPrice float,
    Quantity integer
)

INSERT INTO Orders
    (PersonID, ProductName, ProductPrice, Quantity)
VALUES
    (0, "Doghat", 9.95, 10);

INSERT INTO Orders
    (PersonID, ProductName, ProductPrice, Quantity)
VALUES
    (0, "Cathat", 9.95, 5);

INSERT INTO Orders
    (PersonID, ProductName, ProductPrice, Quantity)
VALUES
    (1, "Ferrethat", 19.95, 10);

INSERT INTO Orders
    (PersonID, ProductName, ProductPrice, Quantity)
VALUES
    (2, "Rathat", 4.95, 1);

INSERT INTO Orders
    (PersonID, ProductName, ProductPrice, Quantity)
VALUES
    (3, "Humanhat", 19.95, 1);


SELECT *
FROM Orders;


SELECT SUM(Quantity)
FROM Orders;


SELECT SUM(ProductPrice * Quantity)
FROM Orders;


SELECT SUM(ProductPrice * Quantity)
FROM Orders
WHERE PersonID = 0;


INSERT INTO Artist
    (Name)
VALUES
    ('Joe Bob');

INSERT INTO Artist
    (Name)
VALUES
    ('Cat Stevens');

INSERT INTO Artist
    (Name)
VALUES
    ('Sharron Needles');


SELECT *
FROM Artist
ORDER BY Name DESC
LIMIT 10;


SELECT *
FROM Artist
ORDER BY Name ASC
LIMIT 5;


SELECT *
FROM Artist
WHERE Name LIKE 'Black%';

SELECT *
FROM Artist
WHERE Name LIKE '%Black%';

SELECT FirstName, LastName
FROM Employee
WHERE City = "Calgary";

SELECT FirstName, LastName, Max(Birthdate)
FROM Employee;

SELECT FirstName, LastName, Min(Birthdate)
FROM Employee;

SELECT *
FROM Employee
WHERE ReportsTo = 2;

SELECT COUNT(*)
FROM Employee
WHERE City = "Lethbridge";


SELECT COUNT(*)
FROM Invoice
WHERE BillingCountry = 'USA';

SELECT Max(Total)
FROM Invoice;

SELECT Min(Total)
FROM Invoice;

SELECT *
FROM Invoice
WHERE Total > 5;

SELECT COUNT(*)
FROM Invoice
WHERE Total < 5;

SELECT COUNT(*)
FROM Invoice
WHERE BillingState in ('CA', 'TX', 'AZ');

SELECT AVG(Total)
FROM Invoice;

SELECT SUM(Total)
FROM Invoice;