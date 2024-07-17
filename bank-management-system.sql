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
CREATE TABLE card(
  card_id INT NOT NULL,
  card_no` INT NOT NULL,
  `account_no` VARCHAR(45) NULL,
  `customer_name` VARCHAR(45) NULL,
  `cvv` VARCHAR(45) NULL,
  `card_type` VARCHAR(45) NULL,
  PRIMARY KEY (`card_id`, `card_no`));

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
