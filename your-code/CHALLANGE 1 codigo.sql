-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema lab_mysql2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab_mysql2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_mysql2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema challange_1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema challange_1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `challange_1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `lab_mysql` ;

-- -----------------------------------------------------
-- Table `lab_mysql`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`cars` (
  `idcar` INT NOT NULL,
  `manufacture` VARCHAR(30) NOT NULL,
  `modelo` DATE NOT NULL,
  `color` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idcar`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`customer` (
  `customerid` INT NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `phone` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `citystore` VARCHAR(45) NULL DEFAULT NULL,
  `vehicleid` INT NOT NULL,
  PRIMARY KEY (`customerid`),
  INDEX `vehicleid` (`vehicleid` ASC) VISIBLE,
  CONSTRAINT `customer_ibfk_1`
    FOREIGN KEY (`vehicleid`)
    REFERENCES `lab_mysql`.`cars` (`idcar`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`salesperson` (
  `idSTAFF` INT NOT NULL,
  `Nombre` VARCHAR(30) NOT NULL,
  `Storelocation` VARCHAR(30) NOT NULL,
  `Carsold` INT NOT NULL,
  PRIMARY KEY (`idSTAFF`),
  INDEX `Carsold` (`Carsold` ASC) VISIBLE,
  CONSTRAINT `salesperson_ibfk_1`
    FOREIGN KEY (`Carsold`)
    REFERENCES `lab_mysql`.`cars` (`idcar`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`invoices` (
  `invoicenumber` INT NOT NULL,
  `carid` INT NOT NULL,
  `customerid` INT NOT NULL,
  `employeeid` INT NOT NULL,
  `saledate` DATE NOT NULL,
  PRIMARY KEY (`invoicenumber`),
  INDEX `carid` (`carid` ASC) VISIBLE,
  INDEX `customerid` (`customerid` ASC) VISIBLE,
  INDEX `employeeid` (`employeeid` ASC) VISIBLE,
  CONSTRAINT `invoices_ibfk_1`
    FOREIGN KEY (`carid`)
    REFERENCES `lab_mysql`.`cars` (`idcar`),
  CONSTRAINT `invoices_ibfk_2`
    FOREIGN KEY (`customerid`)
    REFERENCES `lab_mysql`.`customer` (`customerid`),
  CONSTRAINT `invoices_ibfk_3`
    FOREIGN KEY (`employeeid`)
    REFERENCES `lab_mysql`.`salesperson` (`idSTAFF`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `lab_mysql2` ;

-- -----------------------------------------------------
-- Table `lab_mysql2`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql2`.`cars` (
  `idcar` INT NOT NULL,
  `manufacture` VARCHAR(30) NOT NULL,
  `modelo` DATE NOT NULL,
  `color` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idcar`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql2`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql2`.`customer` (
  `customerid` INT NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `phone` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `citystore` VARCHAR(45) NULL DEFAULT NULL,
  `vehicleid` INT NOT NULL,
  PRIMARY KEY (`customerid`),
  INDEX `vehicleid` (`vehicleid` ASC) VISIBLE,
  CONSTRAINT `customer_ibfk_1`
    FOREIGN KEY (`vehicleid`)
    REFERENCES `lab_mysql2`.`cars` (`idcar`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql2`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql2`.`salesperson` (
  `idstaff` INT NOT NULL,
  `Nombre` VARCHAR(30) NOT NULL,
  `Storelocation` VARCHAR(30) NOT NULL,
  `carsold` INT NOT NULL,
  PRIMARY KEY (`idstaff`),
  INDEX `carsold` (`carsold` ASC) VISIBLE,
  CONSTRAINT `salesperson_ibfk_1`
    FOREIGN KEY (`carsold`)
    REFERENCES `lab_mysql2`.`cars` (`idcar`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql2`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql2`.`invoices` (
  `invoicenumber` INT NOT NULL,
  `carid` INT NOT NULL,
  `customerid` INT NOT NULL,
  `employeeid` INT NOT NULL,
  `saledate` DATE NOT NULL,
  PRIMARY KEY (`invoicenumber`),
  INDEX `carid` (`carid` ASC) VISIBLE,
  INDEX `customerid` (`customerid` ASC) VISIBLE,
  INDEX `employeeid` (`employeeid` ASC) VISIBLE,
  CONSTRAINT `invoices_ibfk_1`
    FOREIGN KEY (`carid`)
    REFERENCES `lab_mysql2`.`cars` (`idcar`),
  CONSTRAINT `invoices_ibfk_2`
    FOREIGN KEY (`customerid`)
    REFERENCES `lab_mysql2`.`customer` (`customerid`),
  CONSTRAINT `invoices_ibfk_3`
    FOREIGN KEY (`employeeid`)
    REFERENCES `lab_mysql2`.`salesperson` (`idstaff`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `challange_1` ;

-- -----------------------------------------------------
-- Table `challange_1`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `challange_1`.`cars` (
  `VEHICLE ID` INT NOT NULL,
  `MANUFACTURER` VARCHAR(45) NOT NULL,
  `MODEL(YEAR)` DATETIME NOT NULL,
  `COLOR` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`VEHICLE ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `challange_1`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `challange_1`.`customer` (
  `CUSTOMER ID` INT NOT NULL,
  `NAME` VARCHAR(45) NOT NULL,
  `PHONE NUMBER` VARCHAR(45) NOT NULL,
  `EMAIL` VARCHAR(45) NOT NULL,
  `CITY STORE` VARCHAR(45) NOT NULL,
  `VEHICLE  ID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER ID`),
  INDEX `VEHICLE ID_idx` (`VEHICLE  ID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `challange_1`.`sales person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `challange_1`.`sales person` (
  `EMPLOYEE ID` INT NOT NULL,
  `NAME` VARCHAR(45) NOT NULL,
  `STORE LOCATION` VARCHAR(45) NOT NULL,
  `CAR SOLD` INT NOT NULL,
  PRIMARY KEY (`EMPLOYEE ID`),
  INDEX `VEHICLE ID_idx` (`CAR SOLD` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `challange_1`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `challange_1`.`invoices` (
  `INVOICE NUMER` INT NOT NULL,
  `CAR_ID` INT NOT NULL,
  `CUSTOMER ID` INT NOT NULL,
  `EMPLOYEE ID` INT NOT NULL,
  `DATE` DATETIME NOT NULL,
  PRIMARY KEY (`INVOICE NUMER`),
  INDEX `VEHICLE ID_idx` (`CAR_ID` ASC) VISIBLE,
  INDEX `CUSTOMER ID_idx` (`CUSTOMER ID` ASC) VISIBLE,
  INDEX `EMPLOYEE ID_idx` (`EMPLOYEE ID` ASC) VISIBLE,
  CONSTRAINT `CUSTOMER ID`
    FOREIGN KEY (`CUSTOMER ID`)
    REFERENCES `challange_1`.`customer` (`CUSTOMER ID`),
  CONSTRAINT `EMPLOYEE ID`
    FOREIGN KEY (`EMPLOYEE ID`)
    REFERENCES `challange_1`.`sales person` (`EMPLOYEE ID`),
  CONSTRAINT `VEHICLE ID`
    FOREIGN KEY (`CAR_ID`)
    REFERENCES `challange_1`.`cars` (`VEHICLE ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
