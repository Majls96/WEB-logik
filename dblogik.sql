SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';


-- -----------------------------------------------------
-- Table `dblogik`.`players`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblogik`.`players` (
  `player_on_turn` INT NOT NULL AUTO_INCREMENT ,
  `player1_id` VARCHAR(45) NULL ,
  `player2_id` VARCHAR(45) NULL ,
  PRIMARY KEY (`player_on_turn`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblogik`.`MasterMind`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblogik`.`MasterMind` (
  `ID` INT NOT NULL AUTO_INCREMENT ,
  `NameofColor` VARCHAR(45) NULL ,
  `players_player_on_turn` INT NOT NULL ,
  `Info` VARCHAR(45) NULL ,
  `Round` VARCHAR(45) NULL ,
  `Result` INT NULL ,
  PRIMARY KEY (`ID`) ,
  INDEX `fk_Color_players1_idx` (`players_player_on_turn` ASC) ,
  CONSTRAINT `fk_Color_players1`
    FOREIGN KEY (`players_player_on_turn` )
    REFERENCES `dblogik`.`players` (`player_on_turn` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
