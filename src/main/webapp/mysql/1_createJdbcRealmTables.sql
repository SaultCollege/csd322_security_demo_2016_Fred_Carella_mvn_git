delimiter $$

/*CREATE DATABASE `csd322_security_demo_2016_Fred_Carella_mvn_git` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */$$

CREATE TABLE `csd322_security_demo_2016_Fred_Carella_mvn_git`.`groups` (
 
  `group_id` int(10) NOT NULL,
 
  `group_name` varchar(255) NOT NULL,
 
  `group_desc` varchar(255) DEFAULT NULL,
 
  PRIMARY KEY (`group_id`)
 
);$$
 
CREATE TABLE `csd322_security_demo_2016_Fred_Carella_mvn_git`.`users` (
 
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
 
  `username` varchar(255) NOT NULL,
 
  `first_name` varchar(255) DEFAULT NULL,
 
  `middle_name` varchar(255) DEFAULT NULL,
 
  `last_name` varchar(255) DEFAULT NULL,
 
  `password` char(64) NOT NULL,
 
  PRIMARY KEY (`user_id`)
 
);$$
 
CREATE TABLE `csd322_security_demo_2016_Fred_Carella_mvn_git`.`user_groups` (
 
  `user_id` int(10) NOT NULL,
 
  `group_id` int(10) NOT NULL,
 
  PRIMARY KEY (`user_id`,`group_id`),
 
  KEY `fk_users_has_groups_groups1` (`group_id`),
 
  KEY `fk_users_has_groups_users` (`user_id`),
 
  CONSTRAINT `fk_groups` FOREIGN KEY (`group_id`) REFERENCES `csd322_security_demo_2016_Fred_Carella_mvn_git`.`groups` (`group_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
 
  CONSTRAINT `fk_users` FOREIGN KEY (`user_id`) REFERENCES `csd322_security_demo_2016_Fred_Carella_mvn_git`.`users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
 
); $$
 
CREATE VIEW `csd322_security_demo_2016_Fred_Carella_mvn_git`.`v_user_role` AS
 
SELECT  u.username, u.password, g.group_name
 
 FROM `csd322_security_demo_2016_Fred_Carella_mvn_git`.`user_groups` ug
 
 INNER JOIN `csd322_security_demo_2016_Fred_Carella_mvn_git`.`users` u ON u.user_id = ug.user_id
 
 INNER JOIN `csd322_security_demo_2016_Fred_Carella_mvn_git`.`groups` g ON g.group_id =  ug.group_id;