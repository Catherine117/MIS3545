use AdventureWorks2012;

/*Activity 1. Using the HumanResource.Employee table, provide a count of the number of employees by job title.  The query should consider only current employees (the CurrentFlag must equal 1).  */
SELECT JobTitle,
	Count(BusinessEntityID) as Number
FROM HumanResources.Employee
WHERE CurrentFlag = 1 
GROUP BY JobTitle;


/*Activity 2. Modify the query you created in Activity 1 so that the output shows only those job titles for which there is more than 1 employee.  */
SELECT JobTitle,
	Count(BusinessEntityID) as Number
FROM HumanResources.Employee
WHERE CurrentFlag = 1 
GROUP BY JobTitle
HAVING Count(BusinessEntityID) > 1
ORDER BY Count (BusinessEntityID) DESC;


/*Activity 3. For each product, show its ProductID and Name (FROM the ProductionProduct table) and the location of its inventory (FROM the Product.Location table) and amount of inventory held at that location (FROM the Production.ProductInventory table).*/

SELECT
P.ProductID, 
P.Name, 
L.Name AS Location,
I.Quantity

FROM 
Production.Product AS P INNER JOIN 
Production.ProductInventory AS I
ON P.ProductID = I.ProductID INNER JOIN 
Production.Location AS L
ON L.LocationID = I.LocationID;


/*Activity 4. Find the product model IDs that have no product associated with them.  
To do this, first do an outer join between the Production.Product table and the Production.ProductModel table in such a way that the ID FROM the ProductModel table always shows, even if there is no product associate with it.  
Then, add a WHERE clause to specify that the ProductID IS NULL */

SELECT
PM.ProductModelID,
<<<<<<< HEAD
P.Name AS ProductName

FROM Production.Product AS P
FULL OUTER JOIN Production.ProductModel AS PM
ON P.ProductModelID = PM.ProductModelID

WHERE
P.ProductID IS NULL
=======
P.Name

FROM 
Production.ProductModel AS PM
FULL OUTER JOIN Production.Product AS P
ON P.ProductModelID = PM.ProductModelID

WHERE
ProductID is NULL;
>>>>>>> 6c54c853d5b06e33fd703f9ce60a7cb9a8b96dd9

