use AdventureWorks2012;

/*Find out info of all the customers*/
SELECT *
From Sales.Customer;


/*Find out info of all the sales orders*/
SELECT *
FROM Sales.SalesOrderHeader;


/*Find out sales info about productID 843*/
SELECT *
FROM Sales.SalesOrderDetail
WHERE ProductID = 843;


/*Sales info of all the products of which unit price is between 100 and 200*/
SELECT *
FROM Sales.SalesOrderDetail
WHERE UnitPrice Between 100 and 200;

/*All the store names*/
SELECT Name
FROM Sales.Store;


/*Find out store names that contain "Bike" */
SELECT Name
FROM Sales.Store
Where Name like '%Bikes' 
COLLATE SQL_Latin1_General_CP1_CS_AS;


/*info of all the credit cards*/
SELECT *
FROM Sales.CreditCard;


/* A list of credit card types*/
SELECT CardType
FROM Sales.CreditCard
GROUP BY CardType





