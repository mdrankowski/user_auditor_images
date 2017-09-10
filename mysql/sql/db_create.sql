CREATE DATABASE IF NOT EXISTS `tourradar` DEFAULT CHARACTER SET utf8;
USE `tourradar`;

CREATE TABLE IF NOT EXISTS `logs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `host` VARCHAR(60),
  `clientip` VARCHAR(20),
  `type` VARCHAR(6),
  `request` VARCHAR(60),
  `response` INT(4),
  `referrer` VARCHAR(60),
  `agent` VARCHAR(60),
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(`id`)
) DEFAULT CHARSET=utf8 COMMENT='Access logs'
PARTITION BY KEY(id)
PARTITIONS 10;

GRANT ALL ON tourradar.* TO 'tr'@'%';