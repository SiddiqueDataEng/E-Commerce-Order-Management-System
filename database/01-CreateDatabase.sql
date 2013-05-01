/*
 * E Commerce Order Management System
 * Project #15 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MySQL, PHP Backend
 * Created: 2012
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ECommerceDB')
BEGIN
    ALTER DATABASE ECommerceDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ECommerceDB;
END
GO

CREATE DATABASE ECommerceDB
ON PRIMARY
(
    NAME = 'ECommerceDB_Data',
    FILENAME = 'C:\SQLData\ECommerceDB_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'ECommerceDB_Log',
    FILENAME = 'C:\SQLData\ECommerceDB_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE ECommerceDB SET RECOVERY SIMPLE;
ALTER DATABASE ECommerceDB SET AUTO_UPDATE_STATISTICS ON;
GO

USE ECommerceDB;
GO

PRINT 'Database ECommerceDB created successfully';
PRINT 'Project: E Commerce Order Management System';
PRINT 'Description: Orders, payments, and shipment status management';
GO
