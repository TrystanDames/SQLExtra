-- Database: BankingDB

-- DROP DATABASE "BankingDB";

CREATE DATABASE "BankingDB"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_South Africa.1252'
    LC_CTYPE = 'English_South Africa.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

--Customer_Personal_Info

Create Table Customer_Personal_Info
(
	CUSTOMER_ID varchar(5),
	CUSTOMER_NAME varchar(30),
	DATE_OF_BIRTH date,
	GUARDIAN_NAME varchar(30),
	ADDRESS varchar(30),
	CONTACT_ID bigint,
	MAIL_ID varchar(30),
	GENDER char(1),
	MARITIAL_STATUS varchar(10),
	IDENTIFICATION_DOC_TYPE varchar(20),
	ID_DOC_NO varchar(20),
	CITIZENSHIP varchar(10),
	CONSTRAINT CUST_PERS_INFO_PK PRIMARY KEY(CUSTOMER_ID)
);

-- DROP TABLE Customer_Personal_Info;

SELECT * from Customer_Personal_Info;

-- Customer_Reference_Info
CREATE TABLE Customer_Reference_Info
(
	CUSTOMER_ID varchar(5),
	REFERENCE_ACC_NAME varchar(20),
	REFERENCE_ACC_NO bigint,
	REFERENCE_ACC_ADDRESS varchar(50),
	RELATION varchar(25),
	CONSTRAINT CUST_REF_INFO_PK PRIMARY KEY(CUSTOMER_ID),
	CONSTRAINT CUST_REF_INFO_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES Customer_Personal_Info
);

SELECT * from Customer_Reference_Info;

--Bank_Info
CREATE TABLE Bank_Info
(
	SWIFT_CODE varchar(15),
	BANK_NAME varchar(25),
	BRANCH_NAME varchar(25),
	CONSTRAINT BANK_INFO_PK PRIMARY KEY(SWIFT_CODE)
);

SELECT * from Bank_Info;