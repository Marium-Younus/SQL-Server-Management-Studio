create database OnlineShop

CREATE TABLE category (
    CatID int NOT NULL,
    CatName varchar(255) NOT NULL,
    CONSTRAINT PK_CatID PRIMARY KEY(CatID) Autoincrement
);