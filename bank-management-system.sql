create database bankmanagementsystem;
USE bankmanagementsystem;
------------------------------------------------------------------
CREATE TABLE enteraccountdetails (
  name VARCHAR(30) NULL,
  accno VARCHAR(45) NULL,
  acc_type VARCHAR(45) NULL,
  balance VARCHAR(45) NULL);

SELECT * FROM enteraccountdetails;
-----------------------------------------------------------------
ALTER TABLE card
CHANGE COLUMN `cardid` `card_id` INT NOT NULL ,
CHANGE COLUMN `cardNo` `card_no` VARCHAR(45) NULL DEFAULT NULL ,
CHANGE COLUMN `cardtype` `card_type` VARCHAR(45) NULL DEFAULT NULL ;
---------------------------------------------------------
CREATE TABLE card (
  cid INT NOT NULL,
  cardNo VARCHAR(45) NULL,
  AccountNo VARCHAR(45) NULL,
  Customer_Name VARCHAR(45) NULL,
  cvv INT NOT NULL,
  Cardtype VARCHAR(45) NULL,
  PRIMARY KEY (`cid`, `cvv`));

SELECT * FROM card;
-----------------------------------------------------------------

CREATE TABLE registercustomer (
  idRegisterCustomer INT NOT NULL,
  firstname VARCHAR(45) NULL,
  lastname VARCHAR(45) NULL,
  gender VARCHAR(45) NULL,
  DOB DATE NULL,
  address VARCHAR(45) NULL,
  emaild VARCHAR(45) NULL,
  idcard VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idRegisterCustomer`, `idcard`));

SELECT * FROM registercustomer;
------------------------------------------------------------------
CREATE TABLE openingbankaccountrc (
  id INT NOT NULL,
  firstname VARCHAR(45) NULL,
  lastname VARCHAR(45) NULL,
  gender VARCHAR(45) NULL,
  DOB DATE NULL,
  address VARCHAR(45) NULL,
  emaild VARCHAR(45) NULL,
  idcard VARCHAR(45) NOT NULL,

SELECT * FROM openingbankaccountrc;
----------------------------------------------------------------------

CREATE TABLE transactionaccount (
  transactio_id INT NOT NULL,
  Account_No VARCHAR(45) NOT NULL,
  Amount INT NULL,
  transaction_date_time VARCHAR(45) NULL,
  TransactionAccountcol VARCHAR(45) NULL,
  PRIMARY KEY (`transactio_id`, `Account_No`));

SELECT * FROM transactionaccount;
------------------------------------------------------------------------
CREATE TABLE email (
  to VARCHAR(200) NULL,
  cc VARCHAR(45) NULL,
  subject VARCHAR(200) NULL,
  body VARCHAR(450) NULL);

SELECT * FROM email;
-------------------------------------------------------------------
CREATE TABLE moneydeposit (
  amt INT NOT NULL,
  balance INT NULL);

SELECT * FROM moneydeposit;
-----------------------------------------------------------------
CREATE TABLE moneywithdraw (
  amt INT NOT NULL,
  balance INT NULL);

SELECT * FROM moneywithdraw;
-------------------------------------------------------------------
