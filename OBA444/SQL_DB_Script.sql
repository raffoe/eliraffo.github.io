-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema oba444_vg
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema oba444_vg
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `oba444_vg` DEFAULT CHARACTER SET utf8 ;
USE `oba444_vg` ;

-- -----------------------------------------------------
-- Table `oba444_vg`.`consolecode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oba444_vg`.`consolecode` (
  `ConsoleCode` VARCHAR(9) NOT NULL,
  `ConsoleName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ConsoleCode`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `oba444_vg`.`productcode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oba444_vg`.`productcode` (
  `ProductCode` VARCHAR(9) NOT NULL,
  `ProductCategory` VARCHAR(45) NOT NULL,
  `ProductAttribute` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ProductCode`),
  UNIQUE INDEX `ProductAttribute_UNIQUE` (`ProductAttribute` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `oba444_vg`.`suppliercode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oba444_vg`.`suppliercode` (
  `SupplierCode` CHAR(3) NOT NULL,
  `SupplierName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`SupplierCode`),
  UNIQUE INDEX `SupplierName_UNIQUE` (`SupplierName` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `oba444_vg`.`producttable`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oba444_vg`.`producttable` (
  `ASIN` CHAR(10) NOT NULL,
  `ProductCode` VARCHAR(9) NOT NULL,
  `SupplierCode` CHAR(3) NOT NULL,
  `ConsoleCode` VARCHAR(9) NOT NULL,
  `Description` VARCHAR(45) NOT NULL,
  `ReleaseDate` DATE NOT NULL,
  `Length` FLOAT(6,2) NOT NULL,
  `Width` FLOAT(6,2) NOT NULL,
  `Height` FLOAT(6,2) NOT NULL,
  `Weight` FLOAT(6,2) NOT NULL,
  PRIMARY KEY (`ASIN`),
  INDEX `fk_ProductTable_ProductCode_idx` (`ProductCode` ASC) VISIBLE,
  INDEX `fk_ProductTable_SupplierCode1_idx` (`SupplierCode` ASC) VISIBLE,
  INDEX `fk_ProductTable_ConsoleCode1_idx` (`ConsoleCode` ASC) VISIBLE,
  CONSTRAINT `fk_ProductTable_ConsoleCode1`
    FOREIGN KEY (`ConsoleCode`)
    REFERENCES `oba444_vg`.`consolecode` (`ConsoleCode`),
  CONSTRAINT `fk_ProductTable_ProductCode`
    FOREIGN KEY (`ProductCode`)
    REFERENCES `oba444_vg`.`productcode` (`ProductCode`),
  CONSTRAINT `fk_ProductTable_SupplierCode1`
    FOREIGN KEY (`SupplierCode`)
    REFERENCES `oba444_vg`.`suppliercode` (`SupplierCode`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `oba444_vg`.`historytable`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oba444_vg`.`historytable` (
  `Date` DATE NOT NULL,
  `ASIN` CHAR(10) NOT NULL,
  `StockLevel` INT(11) NOT NULL,
  `NewPrice` DOUBLE NOT NULL,
  `NumOfReviews` INT(11) NOT NULL,
  `NumOfAnsQuestions` INT(11) NOT NULL,
  `Stars` FLOAT NOT NULL,
  `Prime` INT(11) NOT NULL,
  `VideoGameRank` INT(11) NOT NULL,
  `AccessoryRank` INT(11) NOT NULL,
  `ConsoleRank` INT(11) NOT NULL,
  `GameRank` INT(11) NOT NULL,
  PRIMARY KEY (`ASIN`, `Date`),
  INDEX `fk_HistoryTable_ProductTable1_idx` (`ASIN` ASC) VISIBLE,
  CONSTRAINT `fk_HistoryTable_ProductTable1`
    FOREIGN KEY (`ASIN`)
    REFERENCES `oba444_vg`.`producttable` (`ASIN`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
