SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `dblogik` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `dblogik` ;

-- -----------------------------------------------------
-- Table `dblogik`.`Hra`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblogik`.`Hra` (
  `ID` INT NOT NULL AUTO_INCREMENT ,
  `player_on_turn` INT NULL ,
  PRIMARY KEY (`ID`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblogik`.`MasterMind`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblogik`.`MasterMind` (
  `ID` INT NOT NULL AUTO_INCREMENT ,
  `NameofColor` VARCHAR(45) NULL ,
  `Round` VARCHAR(45) NULL ,
  `ResultRed` VARCHAR(45) NULL ,
  `ResultWhite` VARCHAR(45) NULL ,
  `Hra_ID` INT NOT NULL ,
  PRIMARY KEY (`ID`) ,
  INDEX `fk_MasterMind_Hra_idx` (`Hra_ID` ASC) ,
  CONSTRAINT `fk_MasterMind_Hra`
    FOREIGN KEY (`Hra_ID` )
    REFERENCES `dblogik`.`Hra` (`ID` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
