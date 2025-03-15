-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema little_lemon_capstone
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema little_lemon_capstone
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `little_lemon_capstone` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `little_lemon_capstone` ;

-- -----------------------------------------------------
-- Table `little_lemon_capstone`.`booking`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `little_lemon_capstone`.`booking` ;

CREATE TABLE IF NOT EXISTS `little_lemon_capstone`.`booking` (
  `idBooking` INT NOT NULL,
  `bookingDatetime` DATETIME NULL DEFAULT NULL,
  `tableNo` INT NULL DEFAULT NULL,
  `customerID` INT NULL DEFAULT NULL,
  `Order_idOrder` INT NOT NULL,
  PRIMARY KEY (`idBooking`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `little_lemon_capstone`.`customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `little_lemon_capstone`.`customers` ;

CREATE TABLE IF NOT EXISTS `little_lemon_capstone`.`customers` (
  `customerID` INT NOT NULL,
  `firstName` VARCHAR(45) NULL DEFAULT NULL,
  `lastName` VARCHAR(45) NULL DEFAULT NULL,
  `contactPhone` VARCHAR(45) NULL DEFAULT NULL,
  `contactEmail` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`customerID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `little_lemon_capstone`.`menu`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `little_lemon_capstone`.`menu` ;

CREATE TABLE IF NOT EXISTS `little_lemon_capstone`.`menu` (
  `idCurisine` INT NOT NULL,
  `menuDesc` VARCHAR(45) NULL DEFAULT NULL,
  `products_productID` INT NOT NULL,
  PRIMARY KEY (`idCurisine`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `little_lemon_capstone`.`order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `little_lemon_capstone`.`order` ;

CREATE TABLE IF NOT EXISTS `little_lemon_capstone`.`order` (
  `idOrder` INT NOT NULL,
  `orderDatetime` DATETIME NULL DEFAULT NULL,
  `tableNo` INT NOT NULL,
  `staffID` INT NOT NULL,
  PRIMARY KEY (`idOrder`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `little_lemon_capstone`.`orderdelivery`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `little_lemon_capstone`.`orderdelivery` ;

CREATE TABLE IF NOT EXISTS `little_lemon_capstone`.`orderdelivery` (
  `Order_idOrder` INT NOT NULL,
  `orderDelivery_deliveryID` INT NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `little_lemon_capstone`.`orderdetail`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `little_lemon_capstone`.`orderdetail` ;

CREATE TABLE IF NOT EXISTS `little_lemon_capstone`.`orderdetail` (
  `quantity` INT NULL DEFAULT NULL,
  `Order_idOrder` INT NOT NULL,
  `menu_idCurisine` INT NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `little_lemon_capstone`.`products`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `little_lemon_capstone`.`products` ;

CREATE TABLE IF NOT EXISTS `little_lemon_capstone`.`products` (
  `productID` INT NOT NULL,
  `prodDesc` VARCHAR(45) NULL DEFAULT NULL,
  `prodCost` DECIMAL(10,2) NULL DEFAULT NULL,
  `prodPrice` DECIMAL(10,2) NULL DEFAULT NULL,
  `prodCat` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`productID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `little_lemon_capstone`.`roleplay`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `little_lemon_capstone`.`roleplay` ;

CREATE TABLE IF NOT EXISTS `little_lemon_capstone`.`roleplay` (
  `roleID` INT NOT NULL,
  `roleDesc` VARCHAR(45) NULL DEFAULT NULL,
  `roleStandSalary` DECIMAL(8,2) NULL DEFAULT NULL,
  PRIMARY KEY (`roleID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `little_lemon_capstone`.`staffs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `little_lemon_capstone`.`staffs` ;

CREATE TABLE IF NOT EXISTS `little_lemon_capstone`.`staffs` (
  `staffID` INT NOT NULL,
  `staffName` VARCHAR(45) NULL DEFAULT NULL,
  `salary` DECIMAL(8,2) NULL DEFAULT NULL,
  `rolePlay_roleID` INT NOT NULL,
  PRIMARY KEY (`staffID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
