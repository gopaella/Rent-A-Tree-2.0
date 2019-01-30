set PageSize 200;
set LineSize 300;

DROP TABLE OrderT;
DROP TABLE Customer;
DROP TABLE TreeType;
DROP TABLE Tree;
DROP TABLE TypeT;
-------------------------------------------------------------------------------------------------------------------
CREATE TABLE Customer(
	CustomerId int GENERATED AS IDENTITY,
	Email VARCHAR2 (50)NOT NULL,
	UserPassword VARCHAR2(30)NOT NULL,
	FirstName VARCHAR2 (30)NOT NULL,
	LastName VARCHAR2 (30)NOT NULL,
	Address VARCHAR2 (50)NOT NULL,
	City VARCHAR2 (20)NOT NULL,
	CONSTRAINT CustomerID PRIMARY KEY (CustomerID));
	


CREATE OR REPLACE PROCEDURE insertCustomer(
	vEmail in Customer.Email%Type,
	vUserPassword in Customer.UserPassword%Type,
	vFirstName in Customer.FirstName%Type,
	vLastName in Customer.LastName%Type,
	vAddress in Customer.Address%Type,
	vCity in Customer.City%Type
)

IS

BEGIN
	INSERT INTO Customer (Email, UserPassword, FirstName, LastName, Address, City)
	VALUES(vEmail, vUserPassword, vFirstName, vLastName, vAddress, vCity);
END;
/
BEGIN
	insertCustomer('VPatel@outlook.co.uk', '123', 'Vishal', 'Patel', '34 near park', 'Birmingham');
	insertCustomer('DDavies.co.uk', '456', 'Dan', 'Davies', '21 Church Streer', 'Cardiff');
	insertCustomer('CStanley@Yahoo.co.uk', '789', 'Cuba', 'Stanley', '45 peeper Street', 'London');
	insertCustomer('ARoth@icloud.co.uk', '987', 'Alan', 'Roth', 'hodge house road', 'Reading');
END;
/

SELECT * FROM Customer;
----------------------------------------------------------------------------------------------------------------
CREATE TABLE OrderT(
OrderID INT GENERATED AS IDENTITY,
CustomerID INT,
CONSTRAINT OrderID PRIMARY KEY (OrderID),
CONSTRAINT fk_cus FOREIGN KEY (CustomerId) REFERENCES Customer
);

-------------------------------------------------------------------------------------------------------------
CREATE TABLE Tree(
	TreeID INT GENERATED AS IDENTITY,
	Description VARCHAR2 (100),
	Supplier VARCHAR2 (20),
	Height FLOAT,
	CONSTRAINT TreeID PRIMARY KEY (TreeID));
	
	CREATE OR REPLACE PROCEDURE insertTree(
	vDescription IN Tree.Description%Type,
	vSupplier IN Tree.Supplier%Type,
	vHeight IN Tree.Height%Type
)
IS

BEGIN
	INSERT INTO Tree (Description, Supplier, Height)
	VALUES(vDescription, vSupplier, vHeight);
END;
/
BEGIN
	insertTree('this tree is made of wood', 'GREEN TREES AND CO', 11.5);
	insertTree('this tree is made of Platic', 'red and blue AND CO', 9.0);
	insertTree('this tree is made of wood', 'CHRISTMAS AND CO', 4.5);
	
END;
/

SELECT * FROM Tree;

--------------------------------------------------------------------------------------------------------------------
CREATE TABLE TypeT(
	TypeTId INT GENERATED AS IDENTITY,
	PricePerDay Float Not Null,
	Material VARCHAR2 (30) Not Null,
	CONSTRAINT TypeTId PRIMARY KEY (TypeTId)
);

CREATE OR REPLACE PROCEDURE insertTypeT(
	vPricePerDay IN TypeT.PricePerDay%Type,
	vMaterial IN TypeT.Material%Type
)

IS

BEGIN
	INSERT INTO TypeT (PricePerDay, Material)
	VALUES(vPricePerDay, vMaterial);
END;
/
BEGIN
	insertTypeT(9.99, 'PVC');
	insertTypeT(5.99, 'Natural');
	insertTypeT(11.99, 'WOOD');
	insertTypeT(3.99, 'Plastic');

END;
/
SELECT * FROM TypeT;

-----------------------------------------------------------------------------------------------------------------------
CREATE TABLE TreeType(
	TreeTypeID INT GENERATED AS IDENTITY,
	TreeID INT,
	TypeID INT,
	Typee VARCHAR2 (30),
	CONSTRAINT TreeTypeID PRIMARY KEY (TreeTypeID),
	CONSTRAINT fk_tree FOREIGN KEY (TreeId) REFERENCES Tree,
	CONSTRAINT fk_type FOREIGN KEY (TypeId) REFERENCES TypeT
);
