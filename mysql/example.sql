drop database if exists example;
create database example;
use example;


DROP TABLE IF EXISTS `table1`;
CREATE TABLE `table1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `some_text` varchar(512) DEFAULT '',
  `some_number` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `table1` (username, some_text, some_number) VALUES('some user', 'some text', 42);
