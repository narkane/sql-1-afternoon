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