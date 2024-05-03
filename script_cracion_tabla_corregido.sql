-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cursos_playground_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cursos_playground_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cursos_playground_db` DEFAULT CHARACTER SET utf8 ;
USE `cursos_playground_db` ;

-- -----------------------------------------------------
-- Table `cursos_playground_db`.`cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_playground_db`.`cursos` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `TITULO` VARCHAR(45) NOT NULL,
  `DESCRIPCION` VARCHAR(45) NOT NULL,
  `IMAGEN` LONGTEXT NULL DEFAULT NULL,
  `FECHA_INICIO` DATETIME NOT NULL,
  `FECHA_FIN` DATETIME NOT NULL,
  `CUPO_MAX` INT(11) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `cursos_playground_db`.`unidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_playground_db`.`unidades` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `TITULO` VARCHAR(50) NOT NULL,
  `DESCRIPCION` VARCHAR(50) NOT NULL,
  `FECHA_INICIO` DATETIME NOT NULL,
  `cursos_ID` INT(11) NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_unidades_cursos1_idx` (`cursos_ID` ASC) VISIBLE,
  CONSTRAINT `fk_unidades_cursos1`
    FOREIGN KEY (`cursos_ID`)
    REFERENCES `cursos_playground_db`.`cursos` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 50
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `cursos_playground_db`.`clases`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_playground_db`.`clases` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `TITULO` VARCHAR(50) NULL DEFAULT NULL,
  `DESCRIPCION` VARCHAR(50) NULL DEFAULT NULL,
  `FECHA_INICIO` DATETIME NULL DEFAULT NULL,
  `MARCA_VISIBILIDAD` TINYINT(1) NULL DEFAULT NULL,
  `unidades_ID` INT(11) NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_clases_unidades1_idx` (`unidades_ID` ASC) VISIBLE,
  CONSTRAINT `fk_clases_unidades1`
    FOREIGN KEY (`unidades_ID`)
    REFERENCES `cursos_playground_db`.`unidades` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 31
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `cursos_playground_db`.`bloques`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_playground_db`.`bloques` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `TITULO` VARCHAR(50) NOT NULL,
  `MARCA_VISIBILIDAD` TINYINT(1) NOT NULL,
  `clases_ID` INT(11) NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_bloques_clases1_idx` (`clases_ID` ASC) VISIBLE,
  CONSTRAINT `fk_bloques_clases1`
    FOREIGN KEY (`clases_ID`)
    REFERENCES `cursos_playground_db`.`clases` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 29
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `cursos_playground_db`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_playground_db`.`categorias` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE_CATEGORIA` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `cursos_playground_db`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_playground_db`.`usuarios` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` VARCHAR(100) NOT NULL,
  `APELLIDO` VARCHAR(100) NOT NULL,
  `EMAIL` VARCHAR(100) NOT NULL,
  `CONTRASENIA` VARCHAR(100) NOT NULL,
  `categorias_ID` INT(11) NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_usuarios_categorias1_idx` (`categorias_ID` ASC) VISIBLE,
  CONSTRAINT `fk_usuarios_categorias1`
    FOREIGN KEY (`categorias_ID`)
    REFERENCES `cursos_playground_db`.`categorias` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 67
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `cursos_playground_db`.`usuarios_cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos_playground_db`.`usuarios_cursos` (
  `usuarios_ID` INT(11) NOT NULL,
  `cursos_ID` INT(11) NOT NULL,
  PRIMARY KEY (`usuarios_ID`, `cursos_ID`),
  INDEX `fk_usuarios_has_cursos_cursos1_idx` (`cursos_ID` ASC) VISIBLE,
  INDEX `fk_usuarios_has_cursos_usuarios1_idx` (`usuarios_ID` ASC) VISIBLE,
  CONSTRAINT `fk_usuarios_has_cursos_usuarios1`
    FOREIGN KEY (`usuarios_ID`)
    REFERENCES `cursos_playground_db`.`usuarios` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_has_cursos_cursos1`
    FOREIGN KEY (`cursos_ID`)
    REFERENCES `cursos_playground_db`.`cursos` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
