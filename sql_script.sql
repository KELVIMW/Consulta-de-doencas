create database epidemic;
use epidemic;
CREATE TABLE `epidemic`.`doenca` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `nome` VARCHAR(45) NULL COMMENT '',
  `sintomas` VARCHAR(100) NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '');

insert into doenca values (1, "sarampo", "febre, tosse, irritação nos olhos, nariz escorrendo, falta de apetite, mal-estar");

CREATE TABLE `epidemic`.`ocorrencia` (
  `id` INT NOT NULL COMMENT '',
  `data` VARCHAR(45) NULL COMMENT '',
  `associada` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '');

insert into ocorrencia values (1, "02/02/2021", "sarampo");