# ================================================================================================
# DATABASE
# ================================================================================================

# create database
DROP DATABASE IF EXISTS `heroku_33299a48260ae4d`;
CREATE DATABASE `heroku_33299a48260ae4d` CHARACTER SET utf8 COLLATE utf8_general_ci;

# ================================================

USE `heroku_33299a48260ae4d`;

# create user
DROP USER IF EXISTS `bfcabbfe5932c6`;
CREATE USER `bfcabbfe5932c6` IDENTIFIED BY 'e57c8aeb';

# add privileges to created user
GRANT ALL PRIVILEGES ON bfcabbfe5932c6.* TO 'bfcabbfe5932c6'@'%';
