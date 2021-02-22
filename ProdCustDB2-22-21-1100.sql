
-- create Products table
DROP TABLE IF EXISTS NickSQLAssign1.Products;

CREATE TABLE NickSQLAssign1.Products (
ID INT NOT NULL PRIMARY KEY,
Name NVARCHAR(100) NOT NULL,
Price MONEY NOT NULL
);

-- can get away with this syntax because all column values are defined in appropriate order
INSERT INTO NickSQLAssign1.Products VALUES
(0,'Thingamajig', 3.50),
(1,'dohicky', 5.55),
(2,'whatchamacallit',123),
(3, 'dehydrated water', 16.16)


-- create Customers table
DROP TABLE IF EXISTS NickSQLAssign1.Customers;

CREATE TABLE NickSQLAssign1.Customers (
ID INT NOT NULL PRIMARY KEY,
Firstname NVARCHAR(100) NOT NULL DEFAULT 'DEFAULT',
Lastname NVARCHAR(100) NOT NULL DEFAULT 'CUSTOMER',
)

-- testing mixed order of inserts into a table
INSERT INTO NickSQLAssign1.Customers (ID, Lastname, Firstname)VALUES
(0, 'Jones', 'Barnaby'),
(1, 'Smith', 'Bob'),
(2, 'Ingognito', 'Guy'),
(3, 'Simpson', 'Homer')


-- create Products-Customers-join table
DROP TABLE IF EXISTS NickSQLAssign1.Orders;

CREATE TABLE NickSQLAssign1.Orders(
ID INT NOT NULL PRIMARY KEY,
ProductID INT FOREIGN KEY REFERENCES NickSQLAssign1.Products(ID) ON DELETE CASCADE,	
CustomerID INT FOREIGN KEY REFERENCES NickSQLAssign1.Customers(ID) ON DELETE CASCADE,

)

INSERT INTO NickSQLAssign1.Orders VALUES
(0, 3, 0),
(1, 3, 1),
(2, 0, 0),
(3, 2, 1),
(4, 0, 2),
(5, 1, 3),
(6, 3, 3),
(7, 0, 3)
